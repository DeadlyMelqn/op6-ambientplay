.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x6c

.field static final TRANSACTION_addCrossProfileWidgetProvider:I = 0x9a

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x61

.field static final TRANSACTION_approveCaCert:I = 0x55

.field static final TRANSACTION_bindDeviceAdminServiceAsUser:I = 0xd9

.field static final TRANSACTION_checkProvisioningPreCondition:I = 0xaf

.field static final TRANSACTION_choosePrivateKeyAlias:I = 0x59

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x6d

.field static final TRANSACTION_clearDeviceOwner:I = 0x45

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x62

.field static final TRANSACTION_clearProfileOwner:I = 0x4c

.field static final TRANSACTION_clearResetPasswordToken:I = 0xdf

.field static final TRANSACTION_createAdminSupportIntent:I = 0x79

.field static final TRANSACTION_createAndManageUser:I = 0x7c

.field static final TRANSACTION_enableSystemApp:I = 0x7f

.field static final TRANSACTION_enableSystemAppWithIntent:I = 0x80

.field static final TRANSACTION_enforceCanManageCaCerts:I = 0x54

.field static final TRANSACTION_forceRemoveActiveAdmin:I = 0x37

.field static final TRANSACTION_forceUpdateUserSetupComplete:I = 0xd3

.field static final TRANSACTION_getAccountTypesWithManagementDisabled:I = 0x82

.field static final TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0x83

.field static final TRANSACTION_getActiveAdmins:I = 0x33

.field static final TRANSACTION_getAffiliationIds:I = 0xc8

.field static final TRANSACTION_getAlwaysOnVpnPackage:I = 0x60

.field static final TRANSACTION_getApplicationRestrictions:I = 0x64

.field static final TRANSACTION_getApplicationRestrictionsManagingPackage:I = 0x66

.field static final TRANSACTION_getAutoTimeRequired:I = 0x9e

.field static final TRANSACTION_getBindDeviceAdminTargetUsers:I = 0xda

.field static final TRANSACTION_getBluetoothContactSharingDisabled:I = 0x96

.field static final TRANSACTION_getBluetoothContactSharingDisabledForUser:I = 0x97

.field static final TRANSACTION_getCameraDisabled:I = 0x2c

.field static final TRANSACTION_getCertInstallerPackage:I = 0x5e

.field static final TRANSACTION_getCrossProfileCallerIdDisabled:I = 0x8f

.field static final TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0x90

.field static final TRANSACTION_getCrossProfileContactsSearchDisabled:I = 0x92

.field static final TRANSACTION_getCrossProfileContactsSearchDisabledForUser:I = 0x93

.field static final TRANSACTION_getCrossProfileWidgetProviders:I = 0x9c

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x18

.field static final TRANSACTION_getDelegatePackages:I = 0x5c

.field static final TRANSACTION_getDelegatedScopes:I = 0x5b

.field static final TRANSACTION_getDeviceOwnerComponent:I = 0x42

.field static final TRANSACTION_getDeviceOwnerLockScreenInfo:I = 0x4f

.field static final TRANSACTION_getDeviceOwnerName:I = 0x44

.field static final TRANSACTION_getDeviceOwnerOrganizationName:I = 0xc3

.field static final TRANSACTION_getDeviceOwnerUserId:I = 0x46

.field static final TRANSACTION_getDoNotAskCredentialsOnBoot:I = 0xa7

.field static final TRANSACTION_getForceEphemeralUsers:I = 0xa0

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x25

.field static final TRANSACTION_getKeepUninstalledPackages:I = 0xb1

.field static final TRANSACTION_getKeyguardDisabledFeatures:I = 0x30

.field static final TRANSACTION_getLastBugReportRequestTime:I = 0xdc

.field static final TRANSACTION_getLastNetworkLogRetrievalTime:I = 0xdd

.field static final TRANSACTION_getLastSecurityLogRetrievalTime:I = 0xdb

.field static final TRANSACTION_getLockTaskPackages:I = 0x85

.field static final TRANSACTION_getLongSupportMessage:I = 0xb9

.field static final TRANSACTION_getLongSupportMessageForUser:I = 0xbb

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x1b

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x1e

.field static final TRANSACTION_getMaximumTimeToLockForUserAndProfiles:I = 0x1f

.field static final TRANSACTION_getOrganizationColor:I = 0xbf

.field static final TRANSACTION_getOrganizationColorForUser:I = 0xc0

.field static final TRANSACTION_getOrganizationName:I = 0xc2

.field static final TRANSACTION_getOrganizationNameForUser:I = 0xc4

.field static final TRANSACTION_getOwnerInstalledCaCerts:I = 0xe3

.field static final TRANSACTION_getPasswordExpiration:I = 0x15

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x14

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPendingSystemUpdate:I = 0xa9

.field static final TRANSACTION_getPermissionGrantState:I = 0xad

.field static final TRANSACTION_getPermissionPolicy:I = 0xab

.field static final TRANSACTION_getPermittedAccessibilityServices:I = 0x6f

.field static final TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x70

.field static final TRANSACTION_getPermittedCrossProfileNotificationListeners:I = 0x77

.field static final TRANSACTION_getPermittedInputMethods:I = 0x73

.field static final TRANSACTION_getPermittedInputMethodsForCurrentUser:I = 0x74

.field static final TRANSACTION_getProfileOwner:I = 0x48

.field static final TRANSACTION_getProfileOwnerName:I = 0x49

.field static final TRANSACTION_getProfileWithMinimumFailedPasswordsForWipe:I = 0x19

.field static final TRANSACTION_getRemoveWarning:I = 0x35

.field static final TRANSACTION_getRequiredStrongAuthTimeout:I = 0x21

.field static final TRANSACTION_getRestrictionsProvider:I = 0x69

.field static final TRANSACTION_getScreenCaptureDisabled:I = 0x2e

.field static final TRANSACTION_getShortSupportMessage:I = 0xb7

.field static final TRANSACTION_getShortSupportMessageForUser:I = 0xba

.field static final TRANSACTION_getStorageEncryption:I = 0x28

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x29

.field static final TRANSACTION_getSystemUpdatePolicy:I = 0xa4

.field static final TRANSACTION_getTrustAgentConfiguration:I = 0x99

.field static final TRANSACTION_getUserProvisioningState:I = 0xc5

.field static final TRANSACTION_getUserRestrictions:I = 0x6b

.field static final TRANSACTION_getWifiMacAddress:I = 0xb4

.field static final TRANSACTION_hasDeviceOwner:I = 0x43

.field static final TRANSACTION_hasGrantedPolicy:I = 0x38

.field static final TRANSACTION_hasUserSetupCompleted:I = 0x4d

.field static final TRANSACTION_installCaCert:I = 0x52

.field static final TRANSACTION_installKeyPair:I = 0x57

.field static final TRANSACTION_isAccessibilityServicePermittedByAdmin:I = 0x71

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x16

.field static final TRANSACTION_isAdminActive:I = 0x32

.field static final TRANSACTION_isAffiliatedUser:I = 0xc9

.field static final TRANSACTION_isApplicationHidden:I = 0x7b

.field static final TRANSACTION_isBackupServiceEnabled:I = 0xd5

.field static final TRANSACTION_isCaCertApproved:I = 0x56

.field static final TRANSACTION_isCallerApplicationRestrictionsManagingPackage:I = 0x67

.field static final TRANSACTION_isCurrentInputMethodSetByOwner:I = 0xe2

.field static final TRANSACTION_isDeviceProvisioned:I = 0xd0

.field static final TRANSACTION_isDeviceProvisioningConfigApplied:I = 0xd1

.field static final TRANSACTION_isInputMethodPermittedByAdmin:I = 0x75

.field static final TRANSACTION_isLockTaskPermitted:I = 0x86

.field static final TRANSACTION_isManagedProfile:I = 0xb2

.field static final TRANSACTION_isMasterVolumeMuted:I = 0x8a

.field static final TRANSACTION_isNetworkLoggingEnabled:I = 0xd7

.field static final TRANSACTION_isNotificationListenerServicePermitted:I = 0x78

.field static final TRANSACTION_isPackageSuspended:I = 0x51

.field static final TRANSACTION_isProfileActivePasswordSufficientForParent:I = 0x17

.field static final TRANSACTION_isProvisioningAllowed:I = 0xae

.field static final TRANSACTION_isRemovingAdmin:I = 0xa1

.field static final TRANSACTION_isResetPasswordTokenActive:I = 0xe0

.field static final TRANSACTION_isSecurityLoggingEnabled:I = 0xcb

.field static final TRANSACTION_isSeparateProfileChallengeAllowed:I = 0xbc

.field static final TRANSACTION_isSystemOnlyUser:I = 0xb3

.field static final TRANSACTION_isUninstallBlocked:I = 0x8d

.field static final TRANSACTION_isUninstallInQueue:I = 0xce

.field static final TRANSACTION_lockNow:I = 0x22

.field static final TRANSACTION_notifyLockTaskModeChanged:I = 0x8b

.field static final TRANSACTION_notifyPendingSystemUpdate:I = 0xa8

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x34

.field static final TRANSACTION_reboot:I = 0xb5

.field static final TRANSACTION_removeActiveAdmin:I = 0x36

.field static final TRANSACTION_removeCrossProfileWidgetProvider:I = 0x9b

.field static final TRANSACTION_removeKeyPair:I = 0x58

.field static final TRANSACTION_removeUser:I = 0x7d

.field static final TRANSACTION_reportFailedFingerprintAttempt:I = 0x3d

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x3b

.field static final TRANSACTION_reportKeyguardDismissed:I = 0x3f

.field static final TRANSACTION_reportKeyguardSecured:I = 0x40

.field static final TRANSACTION_reportPasswordChanged:I = 0x3a

.field static final TRANSACTION_reportSuccessfulFingerprintAttempt:I = 0x3e

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x3c

.field static final TRANSACTION_requestBugreport:I = 0x2a

.field static final TRANSACTION_resetPassword:I = 0x1c

.field static final TRANSACTION_resetPasswordWithToken:I = 0xe1

.field static final TRANSACTION_retrieveNetworkLogs:I = 0xd8

.field static final TRANSACTION_retrievePreRebootSecurityLogs:I = 0xcd

.field static final TRANSACTION_retrieveSecurityLogs:I = 0xcc

.field static final TRANSACTION_setAccountManagementDisabled:I = 0x81

.field static final TRANSACTION_setActiveAdmin:I = 0x31

.field static final TRANSACTION_setActivePasswordState:I = 0x39

.field static final TRANSACTION_setAffiliationIds:I = 0xc7

.field static final TRANSACTION_setAlwaysOnVpnPackage:I = 0x5f

.field static final TRANSACTION_setApplicationHidden:I = 0x7a

.field static final TRANSACTION_setApplicationRestrictions:I = 0x63

.field static final TRANSACTION_setApplicationRestrictionsManagingPackage:I = 0x65

.field static final TRANSACTION_setAutoTimeRequired:I = 0x9d

.field static final TRANSACTION_setBackupServiceEnabled:I = 0xd4

.field static final TRANSACTION_setBluetoothContactSharingDisabled:I = 0x95

.field static final TRANSACTION_setCameraDisabled:I = 0x2b

.field static final TRANSACTION_setCertInstallerPackage:I = 0x5d

.field static final TRANSACTION_setCrossProfileCallerIdDisabled:I = 0x8e

.field static final TRANSACTION_setCrossProfileContactsSearchDisabled:I = 0x91

.field static final TRANSACTION_setDelegatedScopes:I = 0x5a

.field static final TRANSACTION_setDeviceOwner:I = 0x41

.field static final TRANSACTION_setDeviceOwnerLockScreenInfo:I = 0x4e

.field static final TRANSACTION_setDeviceProvisioningConfigApplied:I = 0xd2

.field static final TRANSACTION_setForceEphemeralUsers:I = 0x9f

.field static final TRANSACTION_setGlobalProxy:I = 0x24

.field static final TRANSACTION_setGlobalSetting:I = 0x87

.field static final TRANSACTION_setKeepUninstalledPackages:I = 0xb0

.field static final TRANSACTION_setKeyguardDisabled:I = 0xa5

.field static final TRANSACTION_setKeyguardDisabledFeatures:I = 0x2f

.field static final TRANSACTION_setLockTaskPackages:I = 0x84

.field static final TRANSACTION_setLongSupportMessage:I = 0xb8

.field static final TRANSACTION_setMasterVolumeMuted:I = 0x89

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x1a

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x1d

.field static final TRANSACTION_setNetworkLoggingEnabled:I = 0xd6

.field static final TRANSACTION_setOrganizationColor:I = 0xbd

.field static final TRANSACTION_setOrganizationColorForUser:I = 0xbe

.field static final TRANSACTION_setOrganizationName:I = 0xc1

.field static final TRANSACTION_setPackagesSuspended:I = 0x50

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x13

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPermissionGrantState:I = 0xac

.field static final TRANSACTION_setPermissionPolicy:I = 0xaa

.field static final TRANSACTION_setPermittedAccessibilityServices:I = 0x6e

.field static final TRANSACTION_setPermittedCrossProfileNotificationListeners:I = 0x76

.field static final TRANSACTION_setPermittedInputMethods:I = 0x72

.field static final TRANSACTION_setProfileEnabled:I = 0x4a

.field static final TRANSACTION_setProfileName:I = 0x4b

.field static final TRANSACTION_setProfileOwner:I = 0x47

.field static final TRANSACTION_setRecommendedGlobalProxy:I = 0x26

.field static final TRANSACTION_setRequiredStrongAuthTimeout:I = 0x20

.field static final TRANSACTION_setResetPasswordToken:I = 0xde

.field static final TRANSACTION_setRestrictionsProvider:I = 0x68

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x2d

.field static final TRANSACTION_setSecureSetting:I = 0x88

.field static final TRANSACTION_setSecurityLoggingEnabled:I = 0xca

.field static final TRANSACTION_setShortSupportMessage:I = 0xb6

.field static final TRANSACTION_setStatusBarDisabled:I = 0xa6

.field static final TRANSACTION_setStorageEncryption:I = 0x27

.field static final TRANSACTION_setSystemUpdatePolicy:I = 0xa3

.field static final TRANSACTION_setTrustAgentConfiguration:I = 0x98

.field static final TRANSACTION_setUninstallBlocked:I = 0x8c

.field static final TRANSACTION_setUserIcon:I = 0xa2

.field static final TRANSACTION_setUserProvisioningState:I = 0xc6

.field static final TRANSACTION_setUserRestriction:I = 0x6a

.field static final TRANSACTION_startManagedQuickContact:I = 0x94

.field static final TRANSACTION_switchUser:I = 0x7e

.field static final TRANSACTION_uninstallCaCerts:I = 0x53

.field static final TRANSACTION_uninstallPackageWithActiveAdmins:I = 0xcf

.field static final TRANSACTION_wipeData:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 92
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 3707
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 46
    :sswitch_0
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v6, 0x1

    return v6

    .line 51
    :sswitch_1
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 60
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 62
    .local v46, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v24, 0x1

    .line 63
    .local v24, "_arg2":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;IZ)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v6, 0x1

    return v6

    .line 57
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :cond_0
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    .line 62
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_1
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_1

    .line 69
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_2
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 72
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 78
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 80
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    const/16 v24, 0x1

    .line 81
    .restart local v24    # "_arg2":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    move-result v70

    .line 82
    .local v70, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v6, 0x1

    return v6

    .line 75
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    .end local v70    # "_result":I
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 80
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_3
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_3

    .line 88
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_3
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 91
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 97
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 99
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    const/16 v24, 0x1

    .line 100
    .restart local v24    # "_arg2":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v6, 0x1

    return v6

    .line 94
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    .line 99
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_5
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_5

    .line 106
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_4
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    .line 109
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 115
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 117
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    const/16 v24, 0x1

    .line 118
    .restart local v24    # "_arg2":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    move-result v70

    .line 119
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v6, 0x1

    return v6

    .line 112
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    .end local v70    # "_result":I
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    .line 117
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_7
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_7

    .line 125
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_5
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 128
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 134
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 136
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    const/16 v24, 0x1

    .line 137
    .restart local v24    # "_arg2":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/4 v6, 0x1

    return v6

    .line 131
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    .line 136
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_9
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_9

    .line 143
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_6
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 146
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 152
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 154
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    const/16 v24, 0x1

    .line 155
    .restart local v24    # "_arg2":Z
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    move-result v70

    .line 156
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v6, 0x1

    return v6

    .line 149
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    .end local v70    # "_result":I
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    .line 154
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_b
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_b

    .line 162
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_7
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 165
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 171
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 173
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    const/16 v24, 0x1

    .line 174
    .restart local v24    # "_arg2":Z
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V

    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    const/4 v6, 0x1

    return v6

    .line 168
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :cond_c
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c

    .line 173
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_d
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_d

    .line 180
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_8
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    .line 183
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 189
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 191
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    const/16 v24, 0x1

    .line 192
    .restart local v24    # "_arg2":Z
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    move-result v70

    .line 193
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v6, 0x1

    return v6

    .line 186
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    .end local v70    # "_result":I
    :cond_e
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    .line 191
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_f
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_f

    .line 199
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_9
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    .line 202
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 208
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 210
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    const/16 v24, 0x1

    .line 211
    .restart local v24    # "_arg2":Z
    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/4 v6, 0x1

    return v6

    .line 205
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :cond_10
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    .line 210
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_11
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_11

    .line 217
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    .line 220
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 226
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 228
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    const/16 v24, 0x1

    .line 229
    .restart local v24    # "_arg2":Z
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    move-result v70

    .line 230
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    const/4 v6, 0x1

    return v6

    .line 223
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    .end local v70    # "_result":I
    :cond_12
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12

    .line 228
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_13
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_13

    .line 236
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    .line 239
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 245
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 247
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    const/16 v24, 0x1

    .line 248
    .restart local v24    # "_arg2":Z
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v6, 0x1

    return v6

    .line 242
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :cond_14
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_14

    .line 247
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_15
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_15

    .line 254
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    .line 257
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 263
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 265
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    const/16 v24, 0x1

    .line 266
    .restart local v24    # "_arg2":Z
    :goto_17
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    move-result v70

    .line 267
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v6, 0x1

    return v6

    .line 260
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    .end local v70    # "_result":I
    :cond_16
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_16

    .line 265
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_17
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_17

    .line 273
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    .line 276
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 282
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 284
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    const/16 v24, 0x1

    .line 285
    .restart local v24    # "_arg2":Z
    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V

    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    const/4 v6, 0x1

    return v6

    .line 279
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :cond_18
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_18

    .line 284
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_19
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_19

    .line 291
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    .line 294
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 300
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 302
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b

    const/16 v24, 0x1

    .line 303
    .restart local v24    # "_arg2":Z
    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    move-result v70

    .line 304
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v6, 0x1

    return v6

    .line 297
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    .end local v70    # "_result":I
    :cond_1a
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1a

    .line 302
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_1b
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_1b

    .line 310
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    .line 313
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 319
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 321
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v24, 0x1

    .line 322
    .restart local v24    # "_arg2":Z
    :goto_1d
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    const/4 v6, 0x1

    return v6

    .line 316
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :cond_1c
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1c

    .line 321
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_1d
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_1d

    .line 328
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_10
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    .line 331
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 337
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 339
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f

    const/16 v24, 0x1

    .line 340
    .restart local v24    # "_arg2":Z
    :goto_1f
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    move-result v70

    .line 341
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    const/4 v6, 0x1

    return v6

    .line 334
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    .end local v70    # "_result":I
    :cond_1e
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1e

    .line 339
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_1f
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_1f

    .line 347
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_11
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_20

    .line 350
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 356
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 358
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v24, 0x1

    .line 359
    .restart local v24    # "_arg2":Z
    :goto_21
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V

    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    const/4 v6, 0x1

    return v6

    .line 353
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :cond_20
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_20

    .line 358
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_21
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_21

    .line 365
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_12
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    .line 368
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 374
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 376
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    const/16 v24, 0x1

    .line 377
    .restart local v24    # "_arg2":Z
    :goto_23
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    move-result v70

    .line 378
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v6, 0x1

    return v6

    .line 371
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    .end local v70    # "_result":I
    :cond_22
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_22

    .line 376
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_23
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_23

    .line 384
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_13
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24

    .line 387
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 393
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 395
    .local v22, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    const/16 v24, 0x1

    .line 396
    .restart local v24    # "_arg2":Z
    :goto_25
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v3, v24

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v6, 0x1

    return v6

    .line 390
    .end local v22    # "_arg1":J
    .end local v24    # "_arg2":Z
    :cond_24
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_24

    .line 395
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v22    # "_arg1":J
    :cond_25
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_25

    .line 402
    .end local v22    # "_arg1":J
    .end local v24    # "_arg2":Z
    :sswitch_14
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_26

    .line 405
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 411
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 413
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27

    const/16 v24, 0x1

    .line 414
    .restart local v24    # "_arg2":Z
    :goto_27
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v72

    .line 415
    .local v72, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    move-object/from16 v0, p3

    move-wide/from16 v1, v72

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 417
    const/4 v6, 0x1

    return v6

    .line 408
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    .end local v72    # "_result":J
    :cond_26
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_26

    .line 413
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_27
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_27

    .line 421
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_15
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_28

    .line 424
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 430
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 432
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_29

    const/16 v24, 0x1

    .line 433
    .restart local v24    # "_arg2":Z
    :goto_29
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    move-result-wide v72

    .line 434
    .restart local v72    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    move-object/from16 v0, p3

    move-wide/from16 v1, v72

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 436
    const/4 v6, 0x1

    return v6

    .line 427
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    .end local v72    # "_result":J
    :cond_28
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_28

    .line 432
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_29
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_29

    .line 440
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_16
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 444
    .local v41, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2a

    const/16 v58, 0x1

    .line 445
    .local v58, "_arg1":Z
    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(IZ)Z

    move-result v89

    .line 446
    .local v89, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    if-eqz v89, :cond_2b

    const/4 v6, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    const/4 v6, 0x1

    return v6

    .line 444
    .end local v58    # "_arg1":Z
    .end local v89    # "_result":Z
    :cond_2a
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_2a

    .line 447
    .restart local v89    # "_result":Z
    :cond_2b
    const/4 v6, 0x0

    goto :goto_2b

    .line 452
    .end local v41    # "_arg0":I
    .end local v58    # "_arg1":Z
    .end local v89    # "_result":Z
    :sswitch_17
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 455
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProfileActivePasswordSufficientForParent(I)Z

    move-result v89

    .line 456
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    if-eqz v89, :cond_2c

    const/4 v6, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    const/4 v6, 0x1

    return v6

    .line 457
    :cond_2c
    const/4 v6, 0x0

    goto :goto_2c

    .line 462
    .end local v41    # "_arg0":I
    .end local v89    # "_result":Z
    :sswitch_18
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 466
    .restart local v41    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2d

    const/16 v58, 0x1

    .line 467
    .restart local v58    # "_arg1":Z
    :goto_2d
    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(IZ)I

    move-result v70

    .line 468
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    const/4 v6, 0x1

    return v6

    .line 466
    .end local v58    # "_arg1":Z
    .end local v70    # "_result":I
    :cond_2d
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_2d

    .line 474
    .end local v41    # "_arg0":I
    .end local v58    # "_arg1":Z
    :sswitch_19
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 478
    .restart local v41    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v58, 0x1

    .line 479
    .restart local v58    # "_arg1":Z
    :goto_2e
    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileWithMinimumFailedPasswordsForWipe(IZ)I

    move-result v70

    .line 480
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    const/4 v6, 0x1

    return v6

    .line 478
    .end local v58    # "_arg1":Z
    .end local v70    # "_result":I
    :cond_2e
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_2e

    .line 486
    .end local v41    # "_arg0":I
    .end local v58    # "_arg1":Z
    :sswitch_1a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    .line 489
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 495
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 497
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    const/16 v24, 0x1

    .line 498
    .restart local v24    # "_arg2":Z
    :goto_30
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V

    .line 499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    const/4 v6, 0x1

    return v6

    .line 492
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :cond_2f
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2f

    .line 497
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_30
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_30

    .line 504
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_1b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    .line 507
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 513
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 515
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_32

    const/16 v24, 0x1

    .line 516
    .restart local v24    # "_arg2":Z
    :goto_32
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    move-result v70

    .line 517
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    const/4 v6, 0x1

    return v6

    .line 510
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    .end local v70    # "_result":I
    :cond_31
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_31

    .line 515
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_32
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_32

    .line 523
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_1c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 527
    .local v21, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 528
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v89

    .line 529
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    if-eqz v89, :cond_33

    const/4 v6, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    const/4 v6, 0x1

    return v6

    .line 530
    :cond_33
    const/4 v6, 0x0

    goto :goto_33

    .line 535
    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v46    # "_arg1":I
    .end local v89    # "_result":Z
    :sswitch_1d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34

    .line 538
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 544
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 546
    .restart local v22    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    const/16 v24, 0x1

    .line 547
    .restart local v24    # "_arg2":Z
    :goto_35
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v3, v24

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    const/4 v6, 0x1

    return v6

    .line 541
    .end local v22    # "_arg1":J
    .end local v24    # "_arg2":Z
    :cond_34
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_34

    .line 546
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v22    # "_arg1":J
    :cond_35
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_35

    .line 553
    .end local v22    # "_arg1":J
    .end local v24    # "_arg2":Z
    :sswitch_1e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    .line 556
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 562
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 564
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_37

    const/16 v24, 0x1

    .line 565
    .restart local v24    # "_arg2":Z
    :goto_37
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    move-result-wide v72

    .line 566
    .restart local v72    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    move-object/from16 v0, p3

    move-wide/from16 v1, v72

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 568
    const/4 v6, 0x1

    return v6

    .line 559
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    .end local v72    # "_result":J
    :cond_36
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_36

    .line 564
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_37
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_37

    .line 572
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_1f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 575
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v72

    .line 576
    .restart local v72    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    move-object/from16 v0, p3

    move-wide/from16 v1, v72

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 578
    const/4 v6, 0x1

    return v6

    .line 582
    .end local v41    # "_arg0":I
    .end local v72    # "_result":J
    :sswitch_20
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_38

    .line 585
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 591
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 593
    .restart local v22    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_39

    const/16 v24, 0x1

    .line 594
    .restart local v24    # "_arg2":Z
    :goto_39
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v3, v24

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V

    .line 595
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    const/4 v6, 0x1

    return v6

    .line 588
    .end local v22    # "_arg1":J
    .end local v24    # "_arg2":Z
    :cond_38
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_38

    .line 593
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v22    # "_arg1":J
    :cond_39
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_39

    .line 600
    .end local v22    # "_arg1":J
    .end local v24    # "_arg2":Z
    :sswitch_21
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a

    .line 603
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 609
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 611
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v24, 0x1

    .line 612
    .restart local v24    # "_arg2":Z
    :goto_3b
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v72

    .line 613
    .restart local v72    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    move-object/from16 v0, p3

    move-wide/from16 v1, v72

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 615
    const/4 v6, 0x1

    return v6

    .line 606
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    .end local v72    # "_result":J
    :cond_3a
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3a

    .line 611
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_3b
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_3b

    .line 619
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_22
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 623
    .restart local v41    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    const/16 v58, 0x1

    .line 624
    .restart local v58    # "_arg1":Z
    :goto_3c
    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow(IZ)V

    .line 625
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    const/4 v6, 0x1

    return v6

    .line 623
    .end local v58    # "_arg1":Z
    :cond_3c
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_3c

    .line 630
    .end local v41    # "_arg0":I
    .end local v58    # "_arg1":Z
    :sswitch_23
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 633
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(I)V

    .line 634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    const/4 v6, 0x1

    return v6

    .line 639
    .end local v41    # "_arg0":I
    :sswitch_24
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d

    .line 642
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 648
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 650
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 651
    .local v31, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v75

    .line 652
    .local v75, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    if-eqz v75, :cond_3e

    .line 654
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    const/4 v6, 0x1

    move-object/from16 v0, v75

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 660
    :goto_3e
    const/4 v6, 0x1

    return v6

    .line 645
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v75    # "_result":Landroid/content/ComponentName;
    :cond_3d
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3d

    .line 658
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v31    # "_arg2":Ljava/lang/String;
    .restart local v75    # "_result":Landroid/content/ComponentName;
    :cond_3e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3e

    .line 664
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v75    # "_result":Landroid/content/ComponentName;
    :sswitch_25
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 667
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v75

    .line 668
    .restart local v75    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    if-eqz v75, :cond_3f

    .line 670
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    const/4 v6, 0x1

    move-object/from16 v0, v75

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 676
    :goto_3f
    const/4 v6, 0x1

    return v6

    .line 674
    :cond_3f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    .line 680
    .end local v41    # "_arg0":I
    .end local v75    # "_result":Landroid/content/ComponentName;
    :sswitch_26
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_40

    .line 683
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 689
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    .line 690
    sget-object v6, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/net/ProxyInfo;

    .line 695
    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    .line 696
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    const/4 v6, 0x1

    return v6

    .line 686
    :cond_40
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_40

    .line 693
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_41
    const/16 v51, 0x0

    .local v51, "_arg1":Landroid/net/ProxyInfo;
    goto :goto_41

    .line 701
    .end local v51    # "_arg1":Landroid/net/ProxyInfo;
    :sswitch_27
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    .line 704
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 710
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    const/16 v58, 0x1

    .line 711
    .restart local v58    # "_arg1":Z
    :goto_43
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v70

    .line 712
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/4 v6, 0x1

    return v6

    .line 707
    .end local v58    # "_arg1":Z
    .end local v70    # "_result":I
    :cond_42
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_42

    .line 710
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_43
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_43

    .line 718
    .end local v58    # "_arg1":Z
    :sswitch_28
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_44

    .line 721
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 727
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 728
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v89

    .line 729
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    if-eqz v89, :cond_45

    const/4 v6, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    const/4 v6, 0x1

    return v6

    .line 724
    .end local v46    # "_arg1":I
    .end local v89    # "_result":Z
    :cond_44
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_44

    .line 730
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    .restart local v89    # "_result":Z
    :cond_45
    const/4 v6, 0x0

    goto :goto_45

    .line 735
    .end local v46    # "_arg1":I
    .end local v89    # "_result":Z
    :sswitch_29
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 739
    .restart local v21    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 740
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(Ljava/lang/String;I)I

    move-result v70

    .line 741
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    const/4 v6, 0x1

    return v6

    .line 747
    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v46    # "_arg1":I
    .end local v70    # "_result":I
    :sswitch_2a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    .line 750
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 755
    :goto_46
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->requestBugreport(Landroid/content/ComponentName;)Z

    move-result v89

    .line 756
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    if-eqz v89, :cond_47

    const/4 v6, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    const/4 v6, 0x1

    return v6

    .line 753
    .end local v89    # "_result":Z
    :cond_46
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_46

    .line 757
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v89    # "_result":Z
    :cond_47
    const/4 v6, 0x0

    goto :goto_47

    .line 762
    .end local v89    # "_result":Z
    :sswitch_2b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    .line 765
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 771
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_49

    const/16 v58, 0x1

    .line 772
    .restart local v58    # "_arg1":Z
    :goto_49
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    const/4 v6, 0x1

    return v6

    .line 768
    .end local v58    # "_arg1":Z
    :cond_48
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_48

    .line 771
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_49
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_49

    .line 778
    .end local v58    # "_arg1":Z
    :sswitch_2c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    .line 781
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 787
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 788
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v89

    .line 789
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    if-eqz v89, :cond_4b

    const/4 v6, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    const/4 v6, 0x1

    return v6

    .line 784
    .end local v46    # "_arg1":I
    .end local v89    # "_result":Z
    :cond_4a
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4a

    .line 790
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    .restart local v89    # "_result":Z
    :cond_4b
    const/4 v6, 0x0

    goto :goto_4b

    .line 795
    .end local v46    # "_arg1":I
    .end local v89    # "_result":Z
    :sswitch_2d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4c

    .line 798
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 804
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    const/16 v58, 0x1

    .line 805
    .restart local v58    # "_arg1":Z
    :goto_4d
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    .line 806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    const/4 v6, 0x1

    return v6

    .line 801
    .end local v58    # "_arg1":Z
    :cond_4c
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4c

    .line 804
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_4d
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_4d

    .line 811
    .end local v58    # "_arg1":Z
    :sswitch_2e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    .line 814
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 820
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 821
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v89

    .line 822
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    if-eqz v89, :cond_4f

    const/4 v6, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    const/4 v6, 0x1

    return v6

    .line 817
    .end local v46    # "_arg1":I
    .end local v89    # "_result":Z
    :cond_4e
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4e

    .line 823
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    .restart local v89    # "_result":Z
    :cond_4f
    const/4 v6, 0x0

    goto :goto_4f

    .line 828
    .end local v46    # "_arg1":I
    .end local v89    # "_result":Z
    :sswitch_2f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    .line 831
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 837
    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 839
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51

    const/16 v24, 0x1

    .line 840
    .restart local v24    # "_arg2":Z
    :goto_51
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V

    .line 841
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    const/4 v6, 0x1

    return v6

    .line 834
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :cond_50
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_50

    .line 839
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_51
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_51

    .line 846
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_30
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_52

    .line 849
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 855
    :goto_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 857
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_53

    const/16 v24, 0x1

    .line 858
    .restart local v24    # "_arg2":Z
    :goto_53
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    move-result v70

    .line 859
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    const/4 v6, 0x1

    return v6

    .line 852
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    .end local v70    # "_result":I
    :cond_52
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_52

    .line 857
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    :cond_53
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_53

    .line 865
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    :sswitch_31
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_54

    .line 868
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 874
    :goto_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_55

    const/16 v58, 0x1

    .line 876
    .restart local v58    # "_arg1":Z
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 877
    .local v61, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    move/from16 v2, v61

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 878
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    const/4 v6, 0x1

    return v6

    .line 871
    .end local v58    # "_arg1":Z
    .end local v61    # "_arg2":I
    :cond_54
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_54

    .line 874
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_55
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_55

    .line 883
    .end local v58    # "_arg1":Z
    :sswitch_32
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    .line 886
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 892
    :goto_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 893
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v89

    .line 894
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    if-eqz v89, :cond_57

    const/4 v6, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    const/4 v6, 0x1

    return v6

    .line 889
    .end local v46    # "_arg1":I
    .end local v89    # "_result":Z
    :cond_56
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_56

    .line 895
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    .restart local v89    # "_result":Z
    :cond_57
    const/4 v6, 0x0

    goto :goto_57

    .line 900
    .end local v46    # "_arg1":I
    .end local v89    # "_result":Z
    :sswitch_33
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 903
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v85

    .line 904
    .local v85, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    move-object/from16 v0, p3

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 906
    const/4 v6, 0x1

    return v6

    .line 910
    .end local v41    # "_arg0":I
    .end local v85    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_34
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 914
    .restart local v21    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 915
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v89

    .line 916
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    if-eqz v89, :cond_58

    const/4 v6, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    const/4 v6, 0x1

    return v6

    .line 917
    :cond_58
    const/4 v6, 0x0

    goto :goto_58

    .line 922
    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v46    # "_arg1":I
    .end local v89    # "_result":Z
    :sswitch_35
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_59

    .line 925
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 931
    :goto_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5a

    .line 932
    sget-object v6, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/os/RemoteCallback;

    .line 938
    :goto_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 939
    .restart local v61    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v61

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 940
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    const/4 v6, 0x1

    return v6

    .line 928
    .end local v61    # "_arg2":I
    :cond_59
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_59

    .line 935
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_5a
    const/16 v53, 0x0

    .local v53, "_arg1":Landroid/os/RemoteCallback;
    goto :goto_5a

    .line 945
    .end local v53    # "_arg1":Landroid/os/RemoteCallback;
    :sswitch_36
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5b

    .line 948
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 954
    :goto_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 955
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    const/4 v6, 0x1

    return v6

    .line 951
    .end local v46    # "_arg1":I
    :cond_5b
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5b

    .line 961
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_37
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5c

    .line 964
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 970
    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 971
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    .line 972
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    const/4 v6, 0x1

    return v6

    .line 967
    .end local v46    # "_arg1":I
    :cond_5c
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5c

    .line 977
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_38
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5d

    .line 980
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 986
    :goto_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 988
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 989
    .restart local v61    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v61

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v89

    .line 990
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    if-eqz v89, :cond_5e

    const/4 v6, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    const/4 v6, 0x1

    return v6

    .line 983
    .end local v46    # "_arg1":I
    .end local v61    # "_arg2":I
    .end local v89    # "_result":Z
    :cond_5d
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5d

    .line 991
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    .restart local v61    # "_arg2":I
    .restart local v89    # "_result":Z
    :cond_5e
    const/4 v6, 0x0

    goto :goto_5e

    .line 996
    .end local v46    # "_arg1":I
    .end local v61    # "_arg2":I
    .end local v89    # "_result":Z
    :sswitch_39
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5f

    .line 999
    sget-object v6, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/app/admin/PasswordMetrics;

    .line 1005
    :goto_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1006
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(Landroid/app/admin/PasswordMetrics;I)V

    .line 1007
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    const/4 v6, 0x1

    return v6

    .line 1002
    .end local v46    # "_arg1":I
    :cond_5f
    const/16 v42, 0x0

    .local v42, "_arg0":Landroid/app/admin/PasswordMetrics;
    goto :goto_5f

    .line 1012
    .end local v42    # "_arg0":Landroid/app/admin/PasswordMetrics;
    :sswitch_3a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1015
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportPasswordChanged(I)V

    .line 1016
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    const/4 v6, 0x1

    return v6

    .line 1021
    .end local v41    # "_arg0":I
    :sswitch_3b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1023
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1024
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    .line 1025
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    const/4 v6, 0x1

    return v6

    .line 1030
    .end local v41    # "_arg0":I
    :sswitch_3c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1033
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    .line 1034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    const/4 v6, 0x1

    return v6

    .line 1039
    .end local v41    # "_arg0":I
    :sswitch_3d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1042
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedFingerprintAttempt(I)V

    .line 1043
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    const/4 v6, 0x1

    return v6

    .line 1048
    .end local v41    # "_arg0":I
    :sswitch_3e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1051
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulFingerprintAttempt(I)V

    .line 1052
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    const/4 v6, 0x1

    return v6

    .line 1057
    .end local v41    # "_arg0":I
    :sswitch_3f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1060
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardDismissed(I)V

    .line 1061
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    const/4 v6, 0x1

    return v6

    .line 1066
    .end local v41    # "_arg0":I
    :sswitch_40
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1069
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardSecured(I)V

    .line 1070
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    const/4 v6, 0x1

    return v6

    .line 1075
    .end local v41    # "_arg0":I
    :sswitch_41
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_60

    .line 1078
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1084
    :goto_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1086
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 1087
    .restart local v61    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v89

    .line 1088
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    if-eqz v89, :cond_61

    const/4 v6, 0x1

    :goto_61
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    const/4 v6, 0x1

    return v6

    .line 1081
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v61    # "_arg2":I
    .end local v89    # "_result":Z
    :cond_60
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_60

    .line 1089
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v61    # "_arg2":I
    .restart local v89    # "_result":Z
    :cond_61
    const/4 v6, 0x0

    goto :goto_61

    .line 1094
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v61    # "_arg2":I
    .end local v89    # "_result":Z
    :sswitch_42
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_62

    const/16 v45, 0x1

    .line 1097
    .local v45, "_arg0":Z
    :goto_62
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v75

    .line 1098
    .restart local v75    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    if-eqz v75, :cond_63

    .line 1100
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    const/4 v6, 0x1

    move-object/from16 v0, v75

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1106
    :goto_63
    const/4 v6, 0x1

    return v6

    .line 1096
    .end local v45    # "_arg0":Z
    .end local v75    # "_result":Landroid/content/ComponentName;
    :cond_62
    const/16 v45, 0x0

    .restart local v45    # "_arg0":Z
    goto :goto_62

    .line 1104
    .restart local v75    # "_result":Landroid/content/ComponentName;
    :cond_63
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_63

    .line 1110
    .end local v45    # "_arg0":Z
    .end local v75    # "_result":Landroid/content/ComponentName;
    :sswitch_43
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasDeviceOwner()Z

    move-result v89

    .line 1112
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    if-eqz v89, :cond_64

    const/4 v6, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    const/4 v6, 0x1

    return v6

    .line 1113
    :cond_64
    const/4 v6, 0x0

    goto :goto_64

    .line 1118
    .end local v89    # "_result":Z
    :sswitch_44
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v82

    .line 1120
    .local v82, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    move-object/from16 v0, p3

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1122
    const/4 v6, 0x1

    return v6

    .line 1126
    .end local v82    # "_result":Ljava/lang/String;
    :sswitch_45
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1129
    .restart local v21    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    const/4 v6, 0x1

    return v6

    .line 1135
    .end local v21    # "_arg0":Ljava/lang/String;
    :sswitch_46
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerUserId()I

    move-result v70

    .line 1137
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    const/4 v6, 0x1

    return v6

    .line 1143
    .end local v70    # "_result":I
    :sswitch_47
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_65

    .line 1146
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1152
    :goto_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1154
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 1155
    .restart local v61    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v89

    .line 1156
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    if-eqz v89, :cond_66

    const/4 v6, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    const/4 v6, 0x1

    return v6

    .line 1149
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v61    # "_arg2":I
    .end local v89    # "_result":Z
    :cond_65
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_65

    .line 1157
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v61    # "_arg2":I
    .restart local v89    # "_result":Z
    :cond_66
    const/4 v6, 0x0

    goto :goto_66

    .line 1162
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v61    # "_arg2":I
    .end local v89    # "_result":Z
    :sswitch_48
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1165
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v75

    .line 1166
    .restart local v75    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    if-eqz v75, :cond_67

    .line 1168
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1169
    const/4 v6, 0x1

    move-object/from16 v0, v75

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1174
    :goto_67
    const/4 v6, 0x1

    return v6

    .line 1172
    :cond_67
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_67

    .line 1178
    .end local v41    # "_arg0":I
    .end local v75    # "_result":Landroid/content/ComponentName;
    :sswitch_49
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1181
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v82

    .line 1182
    .restart local v82    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    move-object/from16 v0, p3

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1184
    const/4 v6, 0x1

    return v6

    .line 1188
    .end local v41    # "_arg0":I
    .end local v82    # "_result":Ljava/lang/String;
    :sswitch_4a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_68

    .line 1191
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1196
    :goto_68
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileEnabled(Landroid/content/ComponentName;)V

    .line 1197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    const/4 v6, 0x1

    return v6

    .line 1194
    :cond_68
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_68

    .line 1202
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_69

    .line 1205
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1211
    :goto_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1212
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    const/4 v6, 0x1

    return v6

    .line 1208
    .end local v8    # "_arg1":Ljava/lang/String;
    :cond_69
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_69

    .line 1218
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6a

    .line 1221
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1226
    :goto_6a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    .line 1227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    const/4 v6, 0x1

    return v6

    .line 1224
    :cond_6a
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6a

    .line 1232
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1233
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasUserSetupCompleted()Z

    move-result v89

    .line 1234
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    if-eqz v89, :cond_6b

    const/4 v6, 0x1

    :goto_6b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1236
    const/4 v6, 0x1

    return v6

    .line 1235
    :cond_6b
    const/4 v6, 0x0

    goto :goto_6b

    .line 1240
    .end local v89    # "_result":Z
    :sswitch_4e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6c

    .line 1243
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1249
    :goto_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6d

    .line 1250
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/CharSequence;

    .line 1255
    :goto_6d
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 1256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    const/4 v6, 0x1

    return v6

    .line 1246
    :cond_6c
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6c

    .line 1253
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_6d
    const/16 v55, 0x0

    .local v55, "_arg1":Ljava/lang/CharSequence;
    goto :goto_6d

    .line 1261
    .end local v55    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_4f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v81

    .line 1263
    .local v81, "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    if-eqz v81, :cond_6e

    .line 1265
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    const/4 v6, 0x1

    move-object/from16 v0, v81

    move-object/from16 v1, p3

    invoke-static {v0, v1, v6}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1271
    :goto_6e
    const/4 v6, 0x1

    return v6

    .line 1269
    :cond_6e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6e

    .line 1275
    .end local v81    # "_result":Ljava/lang/CharSequence;
    :sswitch_50
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6f

    .line 1278
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1284
    :goto_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1286
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v65

    .line 1288
    .local v65, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_70

    const/16 v69, 0x1

    .line 1289
    .local v69, "_arg3":Z
    :goto_70
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move/from16 v2, v69

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v90

    .line 1290
    .local v90, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    move-object/from16 v0, p3

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1292
    const/4 v6, 0x1

    return v6

    .line 1281
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v65    # "_arg2":[Ljava/lang/String;
    .end local v69    # "_arg3":Z
    .end local v90    # "_result":[Ljava/lang/String;
    :cond_6f
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6f

    .line 1288
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v65    # "_arg2":[Ljava/lang/String;
    :cond_70
    const/16 v69, 0x0

    .restart local v69    # "_arg3":Z
    goto :goto_70

    .line 1296
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v65    # "_arg2":[Ljava/lang/String;
    .end local v69    # "_arg3":Z
    :sswitch_51
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_71

    .line 1299
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1305
    :goto_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1307
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1308
    .restart local v31    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v89

    .line 1309
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1310
    if-eqz v89, :cond_72

    const/4 v6, 0x1

    :goto_72
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    const/4 v6, 0x1

    return v6

    .line 1302
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v89    # "_result":Z
    :cond_71
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_71

    .line 1310
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v31    # "_arg2":Ljava/lang/String;
    .restart local v89    # "_result":Z
    :cond_72
    const/4 v6, 0x0

    goto :goto_72

    .line 1315
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v89    # "_result":Z
    :sswitch_52
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_73

    .line 1318
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1324
    :goto_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1326
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 1327
    .local v9, "_arg2":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z

    move-result v89

    .line 1328
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    if-eqz v89, :cond_74

    const/4 v6, 0x1

    :goto_74
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1330
    const/4 v6, 0x1

    return v6

    .line 1321
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":[B
    .end local v89    # "_result":Z
    :cond_73
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_73

    .line 1329
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":[B
    .restart local v89    # "_result":Z
    :cond_74
    const/4 v6, 0x0

    goto :goto_74

    .line 1334
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":[B
    .end local v89    # "_result":Z
    :sswitch_53
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_75

    .line 1337
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1343
    :goto_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1345
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v65

    .line 1346
    .restart local v65    # "_arg2":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    const/4 v6, 0x1

    return v6

    .line 1340
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v65    # "_arg2":[Ljava/lang/String;
    :cond_75
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_75

    .line 1352
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_54
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_76

    .line 1355
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1361
    :goto_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1362
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1364
    const/4 v6, 0x1

    return v6

    .line 1358
    .end local v8    # "_arg1":Ljava/lang/String;
    :cond_76
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_76

    .line 1368
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_55
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1372
    .restart local v21    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1374
    .restart local v46    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_77

    const/16 v24, 0x1

    .line 1375
    .restart local v24    # "_arg2":Z
    :goto_77
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v46

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->approveCaCert(Ljava/lang/String;IZ)Z

    move-result v89

    .line 1376
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1377
    if-eqz v89, :cond_78

    const/4 v6, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1378
    const/4 v6, 0x1

    return v6

    .line 1374
    .end local v24    # "_arg2":Z
    .end local v89    # "_result":Z
    :cond_77
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_77

    .line 1377
    .restart local v89    # "_result":Z
    :cond_78
    const/4 v6, 0x0

    goto :goto_78

    .line 1382
    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v24    # "_arg2":Z
    .end local v46    # "_arg1":I
    .end local v89    # "_result":Z
    :sswitch_56
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1386
    .restart local v21    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1387
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v89

    .line 1388
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    if-eqz v89, :cond_79

    const/4 v6, 0x1

    :goto_79
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1390
    const/4 v6, 0x1

    return v6

    .line 1389
    :cond_79
    const/4 v6, 0x0

    goto :goto_79

    .line 1394
    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v46    # "_arg1":I
    .end local v89    # "_result":Z
    :sswitch_57
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7a

    .line 1397
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1403
    :goto_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1405
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 1407
    .restart local v9    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 1409
    .local v10, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 1411
    .local v11, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1413
    .local v12, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7b

    const/4 v13, 0x1

    .local v13, "_arg6":Z
    :goto_7b
    move-object/from16 v6, p0

    .line 1414
    invoke-virtual/range {v6 .. v13}, Landroid/app/admin/IDevicePolicyManager$Stub;->installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;Z)Z

    move-result v89

    .line 1415
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    if-eqz v89, :cond_7c

    const/4 v6, 0x1

    :goto_7c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1417
    const/4 v6, 0x1

    return v6

    .line 1400
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":[B
    .end local v10    # "_arg3":[B
    .end local v11    # "_arg4":[B
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":Z
    .end local v89    # "_result":Z
    :cond_7a
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7a

    .line 1413
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":[B
    .restart local v10    # "_arg3":[B
    .restart local v11    # "_arg4":[B
    .restart local v12    # "_arg5":Ljava/lang/String;
    :cond_7b
    const/4 v13, 0x0

    .restart local v13    # "_arg6":Z
    goto :goto_7b

    .line 1416
    .restart local v89    # "_result":Z
    :cond_7c
    const/4 v6, 0x0

    goto :goto_7c

    .line 1421
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":[B
    .end local v10    # "_arg3":[B
    .end local v11    # "_arg4":[B
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":Z
    .end local v89    # "_result":Z
    :sswitch_58
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7d

    .line 1424
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1430
    :goto_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1432
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1433
    .restart local v31    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v89

    .line 1434
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    if-eqz v89, :cond_7e

    const/4 v6, 0x1

    :goto_7e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1436
    const/4 v6, 0x1

    return v6

    .line 1427
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v89    # "_result":Z
    :cond_7d
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7d

    .line 1435
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v31    # "_arg2":Ljava/lang/String;
    .restart local v89    # "_result":Z
    :cond_7e
    const/4 v6, 0x0

    goto :goto_7e

    .line 1440
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v89    # "_result":Z
    :sswitch_59
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1444
    .restart local v41    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7f

    .line 1445
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/net/Uri;

    .line 1451
    :goto_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1453
    .restart local v31    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v68

    .line 1454
    .local v68, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v52

    move-object/from16 v3, v31

    move-object/from16 v4, v68

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1456
    const/4 v6, 0x1

    return v6

    .line 1448
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v68    # "_arg3":Landroid/os/IBinder;
    :cond_7f
    const/16 v52, 0x0

    .local v52, "_arg1":Landroid/net/Uri;
    goto :goto_7f

    .line 1460
    .end local v41    # "_arg0":I
    .end local v52    # "_arg1":Landroid/net/Uri;
    :sswitch_5a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_80

    .line 1463
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1469
    :goto_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1471
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v64

    .line 1472
    .local v64, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 1473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1474
    const/4 v6, 0x1

    return v6

    .line 1466
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v64    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_80
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_80

    .line 1478
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_81

    .line 1481
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1487
    :goto_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1488
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v88

    .line 1489
    .local v88, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1490
    move-object/from16 v0, p3

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1491
    const/4 v6, 0x1

    return v6

    .line 1484
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v88    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_81
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_81

    .line 1495
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_82

    .line 1498
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1504
    :goto_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1505
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v88

    .line 1506
    .restart local v88    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1507
    move-object/from16 v0, p3

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1508
    const/4 v6, 0x1

    return v6

    .line 1501
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v88    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_82
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_82

    .line 1512
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_83

    .line 1515
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1521
    :goto_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1522
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1524
    const/4 v6, 0x1

    return v6

    .line 1518
    .end local v8    # "_arg1":Ljava/lang/String;
    :cond_83
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_83

    .line 1528
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_84

    .line 1531
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1536
    :goto_84
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v82

    .line 1537
    .restart local v82    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    move-object/from16 v0, p3

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1539
    const/4 v6, 0x1

    return v6

    .line 1534
    .end local v82    # "_result":Ljava/lang/String;
    :cond_84
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_84

    .line 1543
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_85

    .line 1546
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1552
    :goto_85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1554
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_86

    const/16 v24, 0x1

    .line 1555
    .restart local v24    # "_arg2":Z
    :goto_86
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v89

    .line 1556
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1557
    if-eqz v89, :cond_87

    const/4 v6, 0x1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1558
    const/4 v6, 0x1

    return v6

    .line 1549
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v24    # "_arg2":Z
    .end local v89    # "_result":Z
    :cond_85
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_85

    .line 1554
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    :cond_86
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_86

    .line 1557
    .restart local v89    # "_result":Z
    :cond_87
    const/4 v6, 0x0

    goto :goto_87

    .line 1562
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v24    # "_arg2":Z
    .end local v89    # "_result":Z
    :sswitch_60
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_88

    .line 1565
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1570
    :goto_88
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v82

    .line 1571
    .restart local v82    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1572
    move-object/from16 v0, p3

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1573
    const/4 v6, 0x1

    return v6

    .line 1568
    .end local v82    # "_result":Ljava/lang/String;
    :cond_88
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_88

    .line 1577
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_61
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_89

    .line 1580
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1586
    :goto_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8a

    .line 1587
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/content/IntentFilter;

    .line 1593
    :goto_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8b

    .line 1594
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    .line 1599
    :goto_8b
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v17

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    .line 1600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    const/4 v6, 0x1

    return v6

    .line 1583
    :cond_89
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_89

    .line 1590
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_8a
    const/16 v49, 0x0

    .local v49, "_arg1":Landroid/content/IntentFilter;
    goto :goto_8a

    .line 1597
    .end local v49    # "_arg1":Landroid/content/IntentFilter;
    :cond_8b
    const/16 v17, 0x0

    .local v17, "_arg2":Landroid/content/ComponentName;
    goto :goto_8b

    .line 1605
    .end local v17    # "_arg2":Landroid/content/ComponentName;
    :sswitch_62
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8c

    .line 1608
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1614
    :goto_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1615
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1617
    const/4 v6, 0x1

    return v6

    .line 1611
    .end local v8    # "_arg1":Ljava/lang/String;
    :cond_8c
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8c

    .line 1621
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_63
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8d

    .line 1624
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1630
    :goto_8d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1632
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1634
    .restart local v31    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8e

    .line 1635
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/os/Bundle;

    .line 1640
    :goto_8e
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v67

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    const/4 v6, 0x1

    return v6

    .line 1627
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    :cond_8d
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8d

    .line 1638
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v31    # "_arg2":Ljava/lang/String;
    :cond_8e
    const/16 v67, 0x0

    .local v67, "_arg3":Landroid/os/Bundle;
    goto :goto_8e

    .line 1646
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v67    # "_arg3":Landroid/os/Bundle;
    :sswitch_64
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8f

    .line 1649
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1655
    :goto_8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1657
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1658
    .restart local v31    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v79

    .line 1659
    .local v79, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1660
    if-eqz v79, :cond_90

    .line 1661
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1662
    const/4 v6, 0x1

    move-object/from16 v0, v79

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1667
    :goto_90
    const/4 v6, 0x1

    return v6

    .line 1652
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v79    # "_result":Landroid/os/Bundle;
    :cond_8f
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8f

    .line 1665
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v31    # "_arg2":Ljava/lang/String;
    .restart local v79    # "_result":Landroid/os/Bundle;
    :cond_90
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_90

    .line 1671
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v79    # "_result":Landroid/os/Bundle;
    :sswitch_65
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_91

    .line 1674
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1680
    :goto_91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1681
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v89

    .line 1682
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1683
    if-eqz v89, :cond_92

    const/4 v6, 0x1

    :goto_92
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1684
    const/4 v6, 0x1

    return v6

    .line 1677
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v89    # "_result":Z
    :cond_91
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_91

    .line 1683
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v89    # "_result":Z
    :cond_92
    const/4 v6, 0x0

    goto :goto_92

    .line 1688
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v89    # "_result":Z
    :sswitch_66
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_93

    .line 1691
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1696
    :goto_93
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v82

    .line 1697
    .restart local v82    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1698
    move-object/from16 v0, p3

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1699
    const/4 v6, 0x1

    return v6

    .line 1694
    .end local v82    # "_result":Ljava/lang/String;
    :cond_93
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_93

    .line 1703
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_67
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1706
    .restart local v21    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z

    move-result v89

    .line 1707
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1708
    if-eqz v89, :cond_94

    const/4 v6, 0x1

    :goto_94
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1709
    const/4 v6, 0x1

    return v6

    .line 1708
    :cond_94
    const/4 v6, 0x0

    goto :goto_94

    .line 1713
    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v89    # "_result":Z
    :sswitch_68
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_95

    .line 1716
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1722
    :goto_95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_96

    .line 1723
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/ComponentName;

    .line 1728
    :goto_96
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1730
    const/4 v6, 0x1

    return v6

    .line 1719
    :cond_95
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_95

    .line 1726
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_96
    const/16 v48, 0x0

    .local v48, "_arg1":Landroid/content/ComponentName;
    goto :goto_96

    .line 1734
    .end local v48    # "_arg1":Landroid/content/ComponentName;
    :sswitch_69
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1737
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v75

    .line 1738
    .restart local v75    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1739
    if-eqz v75, :cond_97

    .line 1740
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1741
    const/4 v6, 0x1

    move-object/from16 v0, v75

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1746
    :goto_97
    const/4 v6, 0x1

    return v6

    .line 1744
    :cond_97
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_97

    .line 1750
    .end local v41    # "_arg0":I
    .end local v75    # "_result":Landroid/content/ComponentName;
    :sswitch_6a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_98

    .line 1753
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1759
    :goto_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1761
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_99

    const/16 v24, 0x1

    .line 1762
    .restart local v24    # "_arg2":Z
    :goto_99
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 1763
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1764
    const/4 v6, 0x1

    return v6

    .line 1756
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v24    # "_arg2":Z
    :cond_98
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_98

    .line 1761
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    :cond_99
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_99

    .line 1768
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v24    # "_arg2":Z
    :sswitch_6b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9a

    .line 1771
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1776
    :goto_9a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v79

    .line 1777
    .restart local v79    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    if-eqz v79, :cond_9b

    .line 1779
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1780
    const/4 v6, 0x1

    move-object/from16 v0, v79

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1785
    :goto_9b
    const/4 v6, 0x1

    return v6

    .line 1774
    .end local v79    # "_result":Landroid/os/Bundle;
    :cond_9a
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9a

    .line 1783
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v79    # "_result":Landroid/os/Bundle;
    :cond_9b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9b

    .line 1789
    .end local v79    # "_result":Landroid/os/Bundle;
    :sswitch_6c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9c

    .line 1792
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1798
    :goto_9c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9d

    .line 1799
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/content/IntentFilter;

    .line 1805
    :goto_9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 1806
    .restart local v61    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v61

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    .line 1807
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1808
    const/4 v6, 0x1

    return v6

    .line 1795
    .end local v61    # "_arg2":I
    :cond_9c
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9c

    .line 1802
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_9d
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Landroid/content/IntentFilter;
    goto :goto_9d

    .line 1812
    .end local v49    # "_arg1":Landroid/content/IntentFilter;
    :sswitch_6d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9e

    .line 1815
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1820
    :goto_9e
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    .line 1821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1822
    const/4 v6, 0x1

    return v6

    .line 1818
    :cond_9e
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9e

    .line 1826
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9f

    .line 1829
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1835
    :goto_9f
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v91

    .line 1836
    .local v91, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v56

    .line 1837
    .local v56, "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v89

    .line 1838
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1839
    if-eqz v89, :cond_a0

    const/4 v6, 0x1

    :goto_a0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1840
    const/4 v6, 0x1

    return v6

    .line 1832
    .end local v56    # "_arg1":Ljava/util/List;
    .end local v89    # "_result":Z
    .end local v91    # "cl":Ljava/lang/ClassLoader;
    :cond_9f
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9f

    .line 1839
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v56    # "_arg1":Ljava/util/List;
    .restart local v89    # "_result":Z
    .restart local v91    # "cl":Ljava/lang/ClassLoader;
    :cond_a0
    const/4 v6, 0x0

    goto :goto_a0

    .line 1844
    .end local v56    # "_arg1":Ljava/util/List;
    .end local v89    # "_result":Z
    .end local v91    # "cl":Ljava/lang/ClassLoader;
    :sswitch_6f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a1

    .line 1847
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1852
    :goto_a1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v83

    .line 1853
    .local v83, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1854
    move-object/from16 v0, p3

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1855
    const/4 v6, 0x1

    return v6

    .line 1850
    .end local v83    # "_result":Ljava/util/List;
    :cond_a1
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a1

    .line 1859
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_70
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1862
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object v83

    .line 1863
    .restart local v83    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1864
    move-object/from16 v0, p3

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1865
    const/4 v6, 0x1

    return v6

    .line 1869
    .end local v41    # "_arg0":I
    .end local v83    # "_result":Ljava/util/List;
    :sswitch_71
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a2

    .line 1872
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1878
    :goto_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1880
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 1881
    .restart local v61    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v89

    .line 1882
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1883
    if-eqz v89, :cond_a3

    const/4 v6, 0x1

    :goto_a3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1884
    const/4 v6, 0x1

    return v6

    .line 1875
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v61    # "_arg2":I
    .end local v89    # "_result":Z
    :cond_a2
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a2

    .line 1883
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v61    # "_arg2":I
    .restart local v89    # "_result":Z
    :cond_a3
    const/4 v6, 0x0

    goto :goto_a3

    .line 1888
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v61    # "_arg2":I
    .end local v89    # "_result":Z
    :sswitch_72
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a4

    .line 1891
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1897
    :goto_a4
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v91

    .line 1898
    .restart local v91    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v56

    .line 1899
    .restart local v56    # "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v89

    .line 1900
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1901
    if-eqz v89, :cond_a5

    const/4 v6, 0x1

    :goto_a5
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1902
    const/4 v6, 0x1

    return v6

    .line 1894
    .end local v56    # "_arg1":Ljava/util/List;
    .end local v89    # "_result":Z
    .end local v91    # "cl":Ljava/lang/ClassLoader;
    :cond_a4
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a4

    .line 1901
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v56    # "_arg1":Ljava/util/List;
    .restart local v89    # "_result":Z
    .restart local v91    # "cl":Ljava/lang/ClassLoader;
    :cond_a5
    const/4 v6, 0x0

    goto :goto_a5

    .line 1906
    .end local v56    # "_arg1":Ljava/util/List;
    .end local v89    # "_result":Z
    .end local v91    # "cl":Ljava/lang/ClassLoader;
    :sswitch_73
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1908
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a6

    .line 1909
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1914
    :goto_a6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v83

    .line 1915
    .restart local v83    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1916
    move-object/from16 v0, p3

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1917
    const/4 v6, 0x1

    return v6

    .line 1912
    .end local v83    # "_result":Ljava/util/List;
    :cond_a6
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a6

    .line 1921
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_74
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1922
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v83

    .line 1923
    .restart local v83    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1924
    move-object/from16 v0, p3

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1925
    const/4 v6, 0x1

    return v6

    .line 1929
    .end local v83    # "_result":Ljava/util/List;
    :sswitch_75
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a7

    .line 1932
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1938
    :goto_a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1940
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 1941
    .restart local v61    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v89

    .line 1942
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1943
    if-eqz v89, :cond_a8

    const/4 v6, 0x1

    :goto_a8
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1944
    const/4 v6, 0x1

    return v6

    .line 1935
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v61    # "_arg2":I
    .end local v89    # "_result":Z
    :cond_a7
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a7

    .line 1943
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v61    # "_arg2":I
    .restart local v89    # "_result":Z
    :cond_a8
    const/4 v6, 0x0

    goto :goto_a8

    .line 1948
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v61    # "_arg2":I
    .end local v89    # "_result":Z
    :sswitch_76
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a9

    .line 1951
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1957
    :goto_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v57

    .line 1958
    .local v57, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v89

    .line 1959
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1960
    if-eqz v89, :cond_aa

    const/4 v6, 0x1

    :goto_aa
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1961
    const/4 v6, 0x1

    return v6

    .line 1954
    .end local v57    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v89    # "_result":Z
    :cond_a9
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a9

    .line 1960
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v57    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v89    # "_result":Z
    :cond_aa
    const/4 v6, 0x0

    goto :goto_aa

    .line 1965
    .end local v57    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v89    # "_result":Z
    :sswitch_77
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ab

    .line 1968
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1973
    :goto_ab
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v88

    .line 1974
    .restart local v88    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1975
    move-object/from16 v0, p3

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1976
    const/4 v6, 0x1

    return v6

    .line 1971
    .end local v88    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ab
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ab

    .line 1980
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_78
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1984
    .restart local v21    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1985
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result v89

    .line 1986
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1987
    if-eqz v89, :cond_ac

    const/4 v6, 0x1

    :goto_ac
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1988
    const/4 v6, 0x1

    return v6

    .line 1987
    :cond_ac
    const/4 v6, 0x0

    goto :goto_ac

    .line 1992
    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v46    # "_arg1":I
    .end local v89    # "_result":Z
    :sswitch_79
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1995
    .restart local v21    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v76

    .line 1996
    .local v76, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1997
    if-eqz v76, :cond_ad

    .line 1998
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1999
    const/4 v6, 0x1

    move-object/from16 v0, v76

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2004
    :goto_ad
    const/4 v6, 0x1

    return v6

    .line 2002
    :cond_ad
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ad

    .line 2008
    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v76    # "_result":Landroid/content/Intent;
    :sswitch_7a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2010
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ae

    .line 2011
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2017
    :goto_ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2019
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 2021
    .restart local v31    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_af

    const/16 v69, 0x1

    .line 2022
    .restart local v69    # "_arg3":Z
    :goto_af
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v69

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v89

    .line 2023
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2024
    if-eqz v89, :cond_b0

    const/4 v6, 0x1

    :goto_b0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2025
    const/4 v6, 0x1

    return v6

    .line 2014
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v69    # "_arg3":Z
    .end local v89    # "_result":Z
    :cond_ae
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ae

    .line 2021
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v31    # "_arg2":Ljava/lang/String;
    :cond_af
    const/16 v69, 0x0

    .restart local v69    # "_arg3":Z
    goto :goto_af

    .line 2024
    .restart local v89    # "_result":Z
    :cond_b0
    const/4 v6, 0x0

    goto :goto_b0

    .line 2029
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v69    # "_arg3":Z
    .end local v89    # "_result":Z
    :sswitch_7b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2031
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b1

    .line 2032
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2038
    :goto_b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2040
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 2041
    .restart local v31    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v89

    .line 2042
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2043
    if-eqz v89, :cond_b2

    const/4 v6, 0x1

    :goto_b2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2044
    const/4 v6, 0x1

    return v6

    .line 2035
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v89    # "_result":Z
    :cond_b1
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b1

    .line 2043
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v31    # "_arg2":Ljava/lang/String;
    .restart local v89    # "_result":Z
    :cond_b2
    const/4 v6, 0x0

    goto :goto_b2

    .line 2048
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v89    # "_result":Z
    :sswitch_7c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b3

    .line 2051
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2057
    :goto_b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2059
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b4

    .line 2060
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    .line 2066
    :goto_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b5

    .line 2067
    sget-object v6, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PersistableBundle;

    .line 2073
    :goto_b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg4":I
    move-object/from16 v14, p0

    move-object v15, v7

    move-object/from16 v16, v8

    .line 2074
    invoke-virtual/range {v14 .. v19}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    move-result-object v80

    .line 2075
    .local v80, "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2076
    if-eqz v80, :cond_b6

    .line 2077
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2078
    const/4 v6, 0x1

    move-object/from16 v0, v80

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2083
    :goto_b6
    const/4 v6, 0x1

    return v6

    .line 2054
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v80    # "_result":Landroid/os/UserHandle;
    :cond_b3
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b3

    .line 2063
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    :cond_b4
    const/16 v17, 0x0

    .restart local v17    # "_arg2":Landroid/content/ComponentName;
    goto :goto_b4

    .line 2070
    .end local v17    # "_arg2":Landroid/content/ComponentName;
    :cond_b5
    const/16 v18, 0x0

    .local v18, "_arg3":Landroid/os/PersistableBundle;
    goto :goto_b5

    .line 2081
    .end local v18    # "_arg3":Landroid/os/PersistableBundle;
    .restart local v19    # "_arg4":I
    .restart local v80    # "_result":Landroid/os/UserHandle;
    :cond_b6
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b6

    .line 2087
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v80    # "_result":Landroid/os/UserHandle;
    :sswitch_7d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2089
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b7

    .line 2090
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2096
    :goto_b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b8

    .line 2097
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/os/UserHandle;

    .line 2102
    :goto_b8
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v89

    .line 2103
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2104
    if-eqz v89, :cond_b9

    const/4 v6, 0x1

    :goto_b9
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2105
    const/4 v6, 0x1

    return v6

    .line 2093
    .end local v89    # "_result":Z
    :cond_b7
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b7

    .line 2100
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_b8
    const/16 v54, 0x0

    .local v54, "_arg1":Landroid/os/UserHandle;
    goto :goto_b8

    .line 2104
    .end local v54    # "_arg1":Landroid/os/UserHandle;
    .restart local v89    # "_result":Z
    :cond_b9
    const/4 v6, 0x0

    goto :goto_b9

    .line 2109
    .end local v89    # "_result":Z
    :sswitch_7e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ba

    .line 2112
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2118
    :goto_ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_bb

    .line 2119
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/os/UserHandle;

    .line 2124
    :goto_bb
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v89

    .line 2125
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2126
    if-eqz v89, :cond_bc

    const/4 v6, 0x1

    :goto_bc
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2127
    const/4 v6, 0x1

    return v6

    .line 2115
    .end local v89    # "_result":Z
    :cond_ba
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ba

    .line 2122
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_bb
    const/16 v54, 0x0

    .restart local v54    # "_arg1":Landroid/os/UserHandle;
    goto :goto_bb

    .line 2126
    .end local v54    # "_arg1":Landroid/os/UserHandle;
    .restart local v89    # "_result":Z
    :cond_bc
    const/4 v6, 0x0

    goto :goto_bc

    .line 2131
    .end local v89    # "_result":Z
    :sswitch_7f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_bd

    .line 2134
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2140
    :goto_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2142
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 2143
    .restart local v31    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2145
    const/4 v6, 0x1

    return v6

    .line 2137
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    :cond_bd
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_bd

    .line 2149
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_80
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_be

    .line 2152
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2158
    :goto_be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2160
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_bf

    .line 2161
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/content/Intent;

    .line 2166
    :goto_bf
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v70

    .line 2167
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2168
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2169
    const/4 v6, 0x1

    return v6

    .line 2155
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":I
    :cond_be
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_be

    .line 2164
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    :cond_bf
    const/16 v62, 0x0

    .local v62, "_arg2":Landroid/content/Intent;
    goto :goto_bf

    .line 2173
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v62    # "_arg2":Landroid/content/Intent;
    :sswitch_81
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c0

    .line 2176
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2182
    :goto_c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2184
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c1

    const/16 v24, 0x1

    .line 2185
    .restart local v24    # "_arg2":Z
    :goto_c1
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 2186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2187
    const/4 v6, 0x1

    return v6

    .line 2179
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v24    # "_arg2":Z
    :cond_c0
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c0

    .line 2184
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    :cond_c1
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_c1

    .line 2191
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v24    # "_arg2":Z
    :sswitch_82
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2192
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    move-result-object v90

    .line 2193
    .restart local v90    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2194
    move-object/from16 v0, p3

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2195
    const/4 v6, 0x1

    return v6

    .line 2199
    .end local v90    # "_result":[Ljava/lang/String;
    :sswitch_83
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 2202
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v90

    .line 2203
    .restart local v90    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2204
    move-object/from16 v0, p3

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2205
    const/4 v6, 0x1

    return v6

    .line 2209
    .end local v41    # "_arg0":I
    .end local v90    # "_result":[Ljava/lang/String;
    :sswitch_84
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c2

    .line 2212
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2218
    :goto_c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v60

    .line 2219
    .local v60, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    .line 2220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2221
    const/4 v6, 0x1

    return v6

    .line 2215
    .end local v60    # "_arg1":[Ljava/lang/String;
    :cond_c2
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c2

    .line 2225
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_85
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c3

    .line 2228
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2233
    :goto_c3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v90

    .line 2234
    .restart local v90    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2235
    move-object/from16 v0, p3

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2236
    const/4 v6, 0x1

    return v6

    .line 2231
    .end local v90    # "_result":[Ljava/lang/String;
    :cond_c3
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c3

    .line 2240
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_86
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 2243
    .restart local v21    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v89

    .line 2244
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2245
    if-eqz v89, :cond_c4

    const/4 v6, 0x1

    :goto_c4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2246
    const/4 v6, 0x1

    return v6

    .line 2245
    :cond_c4
    const/4 v6, 0x0

    goto :goto_c4

    .line 2250
    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v89    # "_result":Z
    :sswitch_87
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c5

    .line 2253
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2259
    :goto_c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2261
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 2262
    .restart local v31    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2264
    const/4 v6, 0x1

    return v6

    .line 2256
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    :cond_c5
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c5

    .line 2268
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_88
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c6

    .line 2271
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2277
    :goto_c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2279
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 2280
    .restart local v31    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2282
    const/4 v6, 0x1

    return v6

    .line 2274
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    :cond_c6
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c6

    .line 2286
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_89
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c7

    .line 2289
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2295
    :goto_c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c8

    const/16 v58, 0x1

    .line 2296
    .restart local v58    # "_arg1":Z
    :goto_c8
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    .line 2297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2298
    const/4 v6, 0x1

    return v6

    .line 2292
    .end local v58    # "_arg1":Z
    :cond_c7
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c7

    .line 2295
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_c8
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_c8

    .line 2302
    .end local v58    # "_arg1":Z
    :sswitch_8a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c9

    .line 2305
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2310
    :goto_c9
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v89

    .line 2311
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2312
    if-eqz v89, :cond_ca

    const/4 v6, 0x1

    :goto_ca
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2313
    const/4 v6, 0x1

    return v6

    .line 2308
    .end local v89    # "_result":Z
    :cond_c9
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c9

    .line 2312
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v89    # "_result":Z
    :cond_ca
    const/4 v6, 0x0

    goto :goto_ca

    .line 2317
    .end local v89    # "_result":Z
    :sswitch_8b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_cb

    const/16 v45, 0x1

    .line 2321
    .restart local v45    # "_arg0":Z
    :goto_cb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2323
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 2324
    .restart local v61    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v61

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 2325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2326
    const/4 v6, 0x1

    return v6

    .line 2319
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg0":Z
    .end local v61    # "_arg2":I
    :cond_cb
    const/16 v45, 0x0

    .restart local v45    # "_arg0":Z
    goto :goto_cb

    .line 2330
    .end local v45    # "_arg0":Z
    :sswitch_8c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_cc

    .line 2333
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2339
    :goto_cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2341
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 2343
    .restart local v31    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_cd

    const/16 v69, 0x1

    .line 2344
    .restart local v69    # "_arg3":Z
    :goto_cd
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v69

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2346
    const/4 v6, 0x1

    return v6

    .line 2336
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v69    # "_arg3":Z
    :cond_cc
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_cc

    .line 2343
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v31    # "_arg2":Ljava/lang/String;
    :cond_cd
    const/16 v69, 0x0

    .restart local v69    # "_arg3":Z
    goto :goto_cd

    .line 2350
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v69    # "_arg3":Z
    :sswitch_8d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ce

    .line 2353
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2359
    :goto_ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2360
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v89

    .line 2361
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2362
    if-eqz v89, :cond_cf

    const/4 v6, 0x1

    :goto_cf
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2363
    const/4 v6, 0x1

    return v6

    .line 2356
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v89    # "_result":Z
    :cond_ce
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ce

    .line 2362
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v89    # "_result":Z
    :cond_cf
    const/4 v6, 0x0

    goto :goto_cf

    .line 2367
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v89    # "_result":Z
    :sswitch_8e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d0

    .line 2370
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2376
    :goto_d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d1

    const/16 v58, 0x1

    .line 2377
    .restart local v58    # "_arg1":Z
    :goto_d1
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    .line 2378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2379
    const/4 v6, 0x1

    return v6

    .line 2373
    .end local v58    # "_arg1":Z
    :cond_d0
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d0

    .line 2376
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_d1
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_d1

    .line 2383
    .end local v58    # "_arg1":Z
    :sswitch_8f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d2

    .line 2386
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2391
    :goto_d2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v89

    .line 2392
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2393
    if-eqz v89, :cond_d3

    const/4 v6, 0x1

    :goto_d3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2394
    const/4 v6, 0x1

    return v6

    .line 2389
    .end local v89    # "_result":Z
    :cond_d2
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d2

    .line 2393
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v89    # "_result":Z
    :cond_d3
    const/4 v6, 0x0

    goto :goto_d3

    .line 2398
    .end local v89    # "_result":Z
    :sswitch_90
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 2401
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v89

    .line 2402
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2403
    if-eqz v89, :cond_d4

    const/4 v6, 0x1

    :goto_d4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2404
    const/4 v6, 0x1

    return v6

    .line 2403
    :cond_d4
    const/4 v6, 0x0

    goto :goto_d4

    .line 2408
    .end local v41    # "_arg0":I
    .end local v89    # "_result":Z
    :sswitch_91
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d5

    .line 2411
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2417
    :goto_d5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d6

    const/16 v58, 0x1

    .line 2418
    .restart local v58    # "_arg1":Z
    :goto_d6
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V

    .line 2419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2420
    const/4 v6, 0x1

    return v6

    .line 2414
    .end local v58    # "_arg1":Z
    :cond_d5
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d5

    .line 2417
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_d6
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_d6

    .line 2424
    .end local v58    # "_arg1":Z
    :sswitch_92
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d7

    .line 2427
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2432
    :goto_d7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    move-result v89

    .line 2433
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2434
    if-eqz v89, :cond_d8

    const/4 v6, 0x1

    :goto_d8
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2435
    const/4 v6, 0x1

    return v6

    .line 2430
    .end local v89    # "_result":Z
    :cond_d7
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d7

    .line 2434
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v89    # "_result":Z
    :cond_d8
    const/4 v6, 0x0

    goto :goto_d8

    .line 2439
    .end local v89    # "_result":Z
    :sswitch_93
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 2442
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabledForUser(I)Z

    move-result v89

    .line 2443
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2444
    if-eqz v89, :cond_d9

    const/4 v6, 0x1

    :goto_d9
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2445
    const/4 v6, 0x1

    return v6

    .line 2444
    :cond_d9
    const/4 v6, 0x0

    goto :goto_d9

    .line 2449
    .end local v41    # "_arg0":I
    .end local v89    # "_result":Z
    :sswitch_94
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 2453
    .restart local v21    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 2455
    .restart local v22    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_da

    const/16 v24, 0x1

    .line 2457
    .restart local v24    # "_arg2":Z
    :goto_da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 2459
    .local v25, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_db

    .line 2460
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/Intent;

    :goto_db
    move-object/from16 v20, p0

    .line 2465
    invoke-virtual/range {v20 .. v27}, Landroid/app/admin/IDevicePolicyManager$Stub;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    .line 2466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2467
    const/4 v6, 0x1

    return v6

    .line 2455
    .end local v24    # "_arg2":Z
    .end local v25    # "_arg3":J
    :cond_da
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_da

    .line 2463
    .restart local v25    # "_arg3":J
    :cond_db
    const/16 v27, 0x0

    .local v27, "_arg4":Landroid/content/Intent;
    goto :goto_db

    .line 2471
    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":J
    .end local v24    # "_arg2":Z
    .end local v25    # "_arg3":J
    .end local v27    # "_arg4":Landroid/content/Intent;
    :sswitch_95
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_dc

    .line 2474
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2480
    :goto_dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_dd

    const/16 v58, 0x1

    .line 2481
    .restart local v58    # "_arg1":Z
    :goto_dd
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    .line 2482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2483
    const/4 v6, 0x1

    return v6

    .line 2477
    .end local v58    # "_arg1":Z
    :cond_dc
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_dc

    .line 2480
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_dd
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_dd

    .line 2487
    .end local v58    # "_arg1":Z
    :sswitch_96
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_de

    .line 2490
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2495
    :goto_de
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result v89

    .line 2496
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2497
    if-eqz v89, :cond_df

    const/4 v6, 0x1

    :goto_df
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2498
    const/4 v6, 0x1

    return v6

    .line 2493
    .end local v89    # "_result":Z
    :cond_de
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_de

    .line 2497
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v89    # "_result":Z
    :cond_df
    const/4 v6, 0x0

    goto :goto_df

    .line 2502
    .end local v89    # "_result":Z
    :sswitch_97
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 2505
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabledForUser(I)Z

    move-result v89

    .line 2506
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2507
    if-eqz v89, :cond_e0

    const/4 v6, 0x1

    :goto_e0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2508
    const/4 v6, 0x1

    return v6

    .line 2507
    :cond_e0
    const/4 v6, 0x0

    goto :goto_e0

    .line 2512
    .end local v41    # "_arg0":I
    .end local v89    # "_result":Z
    :sswitch_98
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e1

    .line 2515
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2521
    :goto_e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e2

    .line 2522
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/ComponentName;

    .line 2528
    :goto_e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e3

    .line 2529
    sget-object v6, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/os/PersistableBundle;

    .line 2535
    :goto_e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e4

    const/16 v69, 0x1

    .line 2536
    .restart local v69    # "_arg3":Z
    :goto_e4
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v63

    move/from16 v3, v69

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V

    .line 2537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2538
    const/4 v6, 0x1

    return v6

    .line 2518
    .end local v69    # "_arg3":Z
    :cond_e1
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e1

    .line 2525
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_e2
    const/16 v48, 0x0

    .restart local v48    # "_arg1":Landroid/content/ComponentName;
    goto :goto_e2

    .line 2532
    .end local v48    # "_arg1":Landroid/content/ComponentName;
    :cond_e3
    const/16 v63, 0x0

    .local v63, "_arg2":Landroid/os/PersistableBundle;
    goto :goto_e3

    .line 2535
    .end local v63    # "_arg2":Landroid/os/PersistableBundle;
    :cond_e4
    const/16 v69, 0x0

    .restart local v69    # "_arg3":Z
    goto :goto_e4

    .line 2542
    .end local v69    # "_arg3":Z
    :sswitch_99
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e5

    .line 2545
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2551
    :goto_e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e6

    .line 2552
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/ComponentName;

    .line 2558
    :goto_e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 2560
    .restart local v61    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e7

    const/16 v69, 0x1

    .line 2561
    .restart local v69    # "_arg3":Z
    :goto_e7
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v61

    move/from16 v3, v69

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;

    move-result-object v86

    .line 2562
    .local v86, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2563
    move-object/from16 v0, p3

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2564
    const/4 v6, 0x1

    return v6

    .line 2548
    .end local v61    # "_arg2":I
    .end local v69    # "_arg3":Z
    .end local v86    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_e5
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e5

    .line 2555
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_e6
    const/16 v48, 0x0

    .restart local v48    # "_arg1":Landroid/content/ComponentName;
    goto :goto_e6

    .line 2560
    .end local v48    # "_arg1":Landroid/content/ComponentName;
    .restart local v61    # "_arg2":I
    :cond_e7
    const/16 v69, 0x0

    .restart local v69    # "_arg3":Z
    goto :goto_e7

    .line 2568
    .end local v61    # "_arg2":I
    .end local v69    # "_arg3":Z
    :sswitch_9a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e8

    .line 2571
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2577
    :goto_e8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2578
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v89

    .line 2579
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2580
    if-eqz v89, :cond_e9

    const/4 v6, 0x1

    :goto_e9
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2581
    const/4 v6, 0x1

    return v6

    .line 2574
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v89    # "_result":Z
    :cond_e8
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e8

    .line 2580
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v89    # "_result":Z
    :cond_e9
    const/4 v6, 0x0

    goto :goto_e9

    .line 2585
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v89    # "_result":Z
    :sswitch_9b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ea

    .line 2588
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2594
    :goto_ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2595
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v89

    .line 2596
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2597
    if-eqz v89, :cond_eb

    const/4 v6, 0x1

    :goto_eb
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2598
    const/4 v6, 0x1

    return v6

    .line 2591
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v89    # "_result":Z
    :cond_ea
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ea

    .line 2597
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v89    # "_result":Z
    :cond_eb
    const/4 v6, 0x0

    goto :goto_eb

    .line 2602
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v89    # "_result":Z
    :sswitch_9c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ec

    .line 2605
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2610
    :goto_ec
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v88

    .line 2611
    .restart local v88    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2612
    move-object/from16 v0, p3

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2613
    const/4 v6, 0x1

    return v6

    .line 2608
    .end local v88    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ec
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ec

    .line 2617
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_9d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ed

    .line 2620
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2626
    :goto_ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ee

    const/16 v58, 0x1

    .line 2627
    .restart local v58    # "_arg1":Z
    :goto_ee
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    .line 2628
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2629
    const/4 v6, 0x1

    return v6

    .line 2623
    .end local v58    # "_arg1":Z
    :cond_ed
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ed

    .line 2626
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_ee
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_ee

    .line 2633
    .end local v58    # "_arg1":Z
    :sswitch_9e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2634
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeRequired()Z

    move-result v89

    .line 2635
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2636
    if-eqz v89, :cond_ef

    const/4 v6, 0x1

    :goto_ef
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2637
    const/4 v6, 0x1

    return v6

    .line 2636
    :cond_ef
    const/4 v6, 0x0

    goto :goto_ef

    .line 2641
    .end local v89    # "_result":Z
    :sswitch_9f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f0

    .line 2644
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2650
    :goto_f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f1

    const/16 v58, 0x1

    .line 2651
    .restart local v58    # "_arg1":Z
    :goto_f1
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V

    .line 2652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2653
    const/4 v6, 0x1

    return v6

    .line 2647
    .end local v58    # "_arg1":Z
    :cond_f0
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f0

    .line 2650
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_f1
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_f1

    .line 2657
    .end local v58    # "_arg1":Z
    :sswitch_a0
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f2

    .line 2660
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2665
    :goto_f2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z

    move-result v89

    .line 2666
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2667
    if-eqz v89, :cond_f3

    const/4 v6, 0x1

    :goto_f3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2668
    const/4 v6, 0x1

    return v6

    .line 2663
    .end local v89    # "_result":Z
    :cond_f2
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f2

    .line 2667
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v89    # "_result":Z
    :cond_f3
    const/4 v6, 0x0

    goto :goto_f3

    .line 2672
    .end local v89    # "_result":Z
    :sswitch_a1
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f4

    .line 2675
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2681
    :goto_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 2682
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v89

    .line 2683
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2684
    if-eqz v89, :cond_f5

    const/4 v6, 0x1

    :goto_f5
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2685
    const/4 v6, 0x1

    return v6

    .line 2678
    .end local v46    # "_arg1":I
    .end local v89    # "_result":Z
    :cond_f4
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f4

    .line 2684
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    .restart local v89    # "_result":Z
    :cond_f5
    const/4 v6, 0x0

    goto :goto_f5

    .line 2689
    .end local v46    # "_arg1":I
    .end local v89    # "_result":Z
    :sswitch_a2
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f6

    .line 2692
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2698
    :goto_f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f7

    .line 2699
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/graphics/Bitmap;

    .line 2704
    :goto_f7
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    .line 2705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2706
    const/4 v6, 0x1

    return v6

    .line 2695
    :cond_f6
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f6

    .line 2702
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_f7
    const/16 v50, 0x0

    .local v50, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_f7

    .line 2710
    .end local v50    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_a3
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f8

    .line 2713
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2719
    :goto_f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f9

    .line 2720
    sget-object v6, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/app/admin/SystemUpdatePolicy;

    .line 2725
    :goto_f9
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V

    .line 2726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2727
    const/4 v6, 0x1

    return v6

    .line 2716
    :cond_f8
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f8

    .line 2723
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_f9
    const/16 v47, 0x0

    .local v47, "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    goto :goto_f9

    .line 2731
    .end local v47    # "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_a4
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2732
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v74

    .line 2733
    .local v74, "_result":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2734
    if-eqz v74, :cond_fa

    .line 2735
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2736
    const/4 v6, 0x1

    move-object/from16 v0, v74

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/admin/SystemUpdatePolicy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2741
    :goto_fa
    const/4 v6, 0x1

    return v6

    .line 2739
    :cond_fa
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_fa

    .line 2745
    .end local v74    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_a5
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_fb

    .line 2748
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2754
    :goto_fb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_fc

    const/16 v58, 0x1

    .line 2755
    .restart local v58    # "_arg1":Z
    :goto_fc
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v89

    .line 2756
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2757
    if-eqz v89, :cond_fd

    const/4 v6, 0x1

    :goto_fd
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2758
    const/4 v6, 0x1

    return v6

    .line 2751
    .end local v58    # "_arg1":Z
    .end local v89    # "_result":Z
    :cond_fb
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fb

    .line 2754
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_fc
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_fc

    .line 2757
    .restart local v89    # "_result":Z
    :cond_fd
    const/4 v6, 0x0

    goto :goto_fd

    .line 2762
    .end local v58    # "_arg1":Z
    .end local v89    # "_result":Z
    :sswitch_a6
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_fe

    .line 2765
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2771
    :goto_fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ff

    const/16 v58, 0x1

    .line 2772
    .restart local v58    # "_arg1":Z
    :goto_ff
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    move-result v89

    .line 2773
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2774
    if-eqz v89, :cond_100

    const/4 v6, 0x1

    :goto_100
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2775
    const/4 v6, 0x1

    return v6

    .line 2768
    .end local v58    # "_arg1":Z
    .end local v89    # "_result":Z
    :cond_fe
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fe

    .line 2771
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_ff
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_ff

    .line 2774
    .restart local v89    # "_result":Z
    :cond_100
    const/4 v6, 0x0

    goto :goto_100

    .line 2779
    .end local v58    # "_arg1":Z
    .end local v89    # "_result":Z
    :sswitch_a7
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2780
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDoNotAskCredentialsOnBoot()Z

    move-result v89

    .line 2781
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2782
    if-eqz v89, :cond_101

    const/4 v6, 0x1

    :goto_101
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2783
    const/4 v6, 0x1

    return v6

    .line 2782
    :cond_101
    const/4 v6, 0x0

    goto :goto_101

    .line 2787
    .end local v89    # "_result":Z
    :sswitch_a8
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_102

    .line 2790
    sget-object v6, Landroid/app/admin/SystemUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/app/admin/SystemUpdateInfo;

    .line 2795
    :goto_102
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V

    .line 2796
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2797
    const/4 v6, 0x1

    return v6

    .line 2793
    :cond_102
    const/16 v43, 0x0

    .local v43, "_arg0":Landroid/app/admin/SystemUpdateInfo;
    goto :goto_102

    .line 2801
    .end local v43    # "_arg0":Landroid/app/admin/SystemUpdateInfo;
    :sswitch_a9
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_103

    .line 2804
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2809
    :goto_103
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v71

    .line 2810
    .local v71, "_result":Landroid/app/admin/SystemUpdateInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2811
    if-eqz v71, :cond_104

    .line 2812
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2813
    const/4 v6, 0x1

    move-object/from16 v0, v71

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/admin/SystemUpdateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2818
    :goto_104
    const/4 v6, 0x1

    return v6

    .line 2807
    .end local v71    # "_result":Landroid/app/admin/SystemUpdateInfo;
    :cond_103
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_103

    .line 2816
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v71    # "_result":Landroid/app/admin/SystemUpdateInfo;
    :cond_104
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_104

    .line 2822
    .end local v71    # "_result":Landroid/app/admin/SystemUpdateInfo;
    :sswitch_aa
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_105

    .line 2825
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2831
    :goto_105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2833
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 2834
    .restart local v61    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 2835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2836
    const/4 v6, 0x1

    return v6

    .line 2828
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v61    # "_arg2":I
    :cond_105
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_105

    .line 2840
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_ab
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_106

    .line 2843
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2848
    :goto_106
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v70

    .line 2849
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2850
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2851
    const/4 v6, 0x1

    return v6

    .line 2846
    .end local v70    # "_result":I
    :cond_106
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_106

    .line 2855
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_ac
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_107

    .line 2858
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2864
    :goto_107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2866
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 2868
    .restart local v31    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2870
    .local v32, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg4":I
    move-object/from16 v28, p0

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move/from16 v33, v19

    .line 2871
    invoke-virtual/range {v28 .. v33}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v89

    .line 2872
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2873
    if-eqz v89, :cond_108

    const/4 v6, 0x1

    :goto_108
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2874
    const/4 v6, 0x1

    return v6

    .line 2861
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v32    # "_arg3":Ljava/lang/String;
    .end local v89    # "_result":Z
    :cond_107
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_107

    .line 2873
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v19    # "_arg4":I
    .restart local v31    # "_arg2":Ljava/lang/String;
    .restart local v32    # "_arg3":Ljava/lang/String;
    .restart local v89    # "_result":Z
    :cond_108
    const/4 v6, 0x0

    goto :goto_108

    .line 2878
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v32    # "_arg3":Ljava/lang/String;
    .end local v89    # "_result":Z
    :sswitch_ad
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_109

    .line 2881
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2887
    :goto_109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2889
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 2891
    .restart local v31    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2892
    .restart local v32    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v70

    .line 2893
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2894
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2895
    const/4 v6, 0x1

    return v6

    .line 2884
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v32    # "_arg3":Ljava/lang/String;
    .end local v70    # "_result":I
    :cond_109
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_109

    .line 2899
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_ae
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 2903
    .restart local v21    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2904
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v89

    .line 2905
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2906
    if-eqz v89, :cond_10a

    const/4 v6, 0x1

    :goto_10a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2907
    const/4 v6, 0x1

    return v6

    .line 2906
    :cond_10a
    const/4 v6, 0x0

    goto :goto_10a

    .line 2911
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v89    # "_result":Z
    :sswitch_af
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2913
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 2915
    .restart local v21    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2916
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->checkProvisioningPreCondition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v70

    .line 2917
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2918
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2919
    const/4 v6, 0x1

    return v6

    .line 2923
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":I
    :sswitch_b0
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10b

    .line 2926
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2932
    :goto_10b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2934
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v64

    .line 2935
    .restart local v64    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 2936
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2937
    const/4 v6, 0x1

    return v6

    .line 2929
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v64    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10b
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10b

    .line 2941
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b1
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10c

    .line 2944
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2950
    :goto_10c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2951
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v88

    .line 2952
    .restart local v88    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2953
    move-object/from16 v0, p3

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2954
    const/4 v6, 0x1

    return v6

    .line 2947
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v88    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10c
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10c

    .line 2958
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b2
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2960
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10d

    .line 2961
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2966
    :goto_10d
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result v89

    .line 2967
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2968
    if-eqz v89, :cond_10e

    const/4 v6, 0x1

    :goto_10e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2969
    const/4 v6, 0x1

    return v6

    .line 2964
    .end local v89    # "_result":Z
    :cond_10d
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10d

    .line 2968
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v89    # "_result":Z
    :cond_10e
    const/4 v6, 0x0

    goto :goto_10e

    .line 2973
    .end local v89    # "_result":Z
    :sswitch_b3
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10f

    .line 2976
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2981
    :goto_10f
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSystemOnlyUser(Landroid/content/ComponentName;)Z

    move-result v89

    .line 2982
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2983
    if-eqz v89, :cond_110

    const/4 v6, 0x1

    :goto_110
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2984
    const/4 v6, 0x1

    return v6

    .line 2979
    .end local v89    # "_result":Z
    :cond_10f
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10f

    .line 2983
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v89    # "_result":Z
    :cond_110
    const/4 v6, 0x0

    goto :goto_110

    .line 2988
    .end local v89    # "_result":Z
    :sswitch_b4
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_111

    .line 2991
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 2996
    :goto_111
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v82

    .line 2997
    .restart local v82    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2998
    move-object/from16 v0, p3

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2999
    const/4 v6, 0x1

    return v6

    .line 2994
    .end local v82    # "_result":Ljava/lang/String;
    :cond_111
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_111

    .line 3003
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b5
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3005
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_112

    .line 3006
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3011
    :goto_112
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->reboot(Landroid/content/ComponentName;)V

    .line 3012
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3013
    const/4 v6, 0x1

    return v6

    .line 3009
    :cond_112
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_112

    .line 3017
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b6
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3019
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_113

    .line 3020
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3026
    :goto_113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_114

    .line 3027
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/CharSequence;

    .line 3032
    :goto_114
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 3033
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3034
    const/4 v6, 0x1

    return v6

    .line 3023
    :cond_113
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_113

    .line 3030
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_114
    const/16 v55, 0x0

    .restart local v55    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_114

    .line 3038
    .end local v55    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_b7
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_115

    .line 3041
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3046
    :goto_115
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v81

    .line 3047
    .restart local v81    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3048
    if-eqz v81, :cond_116

    .line 3049
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3050
    const/4 v6, 0x1

    move-object/from16 v0, v81

    move-object/from16 v1, p3

    invoke-static {v0, v1, v6}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3055
    :goto_116
    const/4 v6, 0x1

    return v6

    .line 3044
    .end local v81    # "_result":Ljava/lang/CharSequence;
    :cond_115
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_115

    .line 3053
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v81    # "_result":Ljava/lang/CharSequence;
    :cond_116
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_116

    .line 3059
    .end local v81    # "_result":Ljava/lang/CharSequence;
    :sswitch_b8
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3061
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_117

    .line 3062
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3068
    :goto_117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_118

    .line 3069
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/CharSequence;

    .line 3074
    :goto_118
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 3075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3076
    const/4 v6, 0x1

    return v6

    .line 3065
    :cond_117
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_117

    .line 3072
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_118
    const/16 v55, 0x0

    .restart local v55    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_118

    .line 3080
    .end local v55    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_b9
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_119

    .line 3083
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3088
    :goto_119
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v81

    .line 3089
    .restart local v81    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3090
    if-eqz v81, :cond_11a

    .line 3091
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3092
    const/4 v6, 0x1

    move-object/from16 v0, v81

    move-object/from16 v1, p3

    invoke-static {v0, v1, v6}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3097
    :goto_11a
    const/4 v6, 0x1

    return v6

    .line 3086
    .end local v81    # "_result":Ljava/lang/CharSequence;
    :cond_119
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_119

    .line 3095
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v81    # "_result":Ljava/lang/CharSequence;
    :cond_11a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11a

    .line 3101
    .end local v81    # "_result":Ljava/lang/CharSequence;
    :sswitch_ba
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11b

    .line 3104
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3110
    :goto_11b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 3111
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v81

    .line 3112
    .restart local v81    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3113
    if-eqz v81, :cond_11c

    .line 3114
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3115
    const/4 v6, 0x1

    move-object/from16 v0, v81

    move-object/from16 v1, p3

    invoke-static {v0, v1, v6}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3120
    :goto_11c
    const/4 v6, 0x1

    return v6

    .line 3107
    .end local v46    # "_arg1":I
    .end local v81    # "_result":Ljava/lang/CharSequence;
    :cond_11b
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11b

    .line 3118
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    .restart local v81    # "_result":Ljava/lang/CharSequence;
    :cond_11c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11c

    .line 3124
    .end local v46    # "_arg1":I
    .end local v81    # "_result":Ljava/lang/CharSequence;
    :sswitch_bb
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11d

    .line 3127
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3133
    :goto_11d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 3134
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v81

    .line 3135
    .restart local v81    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3136
    if-eqz v81, :cond_11e

    .line 3137
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3138
    const/4 v6, 0x1

    move-object/from16 v0, v81

    move-object/from16 v1, p3

    invoke-static {v0, v1, v6}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3143
    :goto_11e
    const/4 v6, 0x1

    return v6

    .line 3130
    .end local v46    # "_arg1":I
    .end local v81    # "_result":Ljava/lang/CharSequence;
    :cond_11d
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11d

    .line 3141
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v46    # "_arg1":I
    .restart local v81    # "_result":Ljava/lang/CharSequence;
    :cond_11e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11e

    .line 3147
    .end local v46    # "_arg1":I
    .end local v81    # "_result":Ljava/lang/CharSequence;
    :sswitch_bc
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 3150
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSeparateProfileChallengeAllowed(I)Z

    move-result v89

    .line 3151
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3152
    if-eqz v89, :cond_11f

    const/4 v6, 0x1

    :goto_11f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3153
    const/4 v6, 0x1

    return v6

    .line 3152
    :cond_11f
    const/4 v6, 0x0

    goto :goto_11f

    .line 3157
    .end local v41    # "_arg0":I
    .end local v89    # "_result":Z
    :sswitch_bd
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_120

    .line 3160
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3166
    :goto_120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 3167
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColor(Landroid/content/ComponentName;I)V

    .line 3168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3169
    const/4 v6, 0x1

    return v6

    .line 3163
    .end local v46    # "_arg1":I
    :cond_120
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_120

    .line 3173
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_be
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 3177
    .restart local v41    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 3178
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColorForUser(II)V

    .line 3179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3180
    const/4 v6, 0x1

    return v6

    .line 3184
    .end local v41    # "_arg0":I
    .end local v46    # "_arg1":I
    :sswitch_bf
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_121

    .line 3187
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3192
    :goto_121
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColor(Landroid/content/ComponentName;)I

    move-result v70

    .line 3193
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3194
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3195
    const/4 v6, 0x1

    return v6

    .line 3190
    .end local v70    # "_result":I
    :cond_121
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_121

    .line 3199
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c0
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 3202
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColorForUser(I)I

    move-result v70

    .line 3203
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3204
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3205
    const/4 v6, 0x1

    return v6

    .line 3209
    .end local v41    # "_arg0":I
    .end local v70    # "_result":I
    :sswitch_c1
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_122

    .line 3212
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3218
    :goto_122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_123

    .line 3219
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/CharSequence;

    .line 3224
    :goto_123
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 3225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3226
    const/4 v6, 0x1

    return v6

    .line 3215
    :cond_122
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_122

    .line 3222
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_123
    const/16 v55, 0x0

    .restart local v55    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_123

    .line 3230
    .end local v55    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_c2
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_124

    .line 3233
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3238
    :goto_124
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v81

    .line 3239
    .restart local v81    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3240
    if-eqz v81, :cond_125

    .line 3241
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3242
    const/4 v6, 0x1

    move-object/from16 v0, v81

    move-object/from16 v1, p3

    invoke-static {v0, v1, v6}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3247
    :goto_125
    const/4 v6, 0x1

    return v6

    .line 3236
    .end local v81    # "_result":Ljava/lang/CharSequence;
    :cond_124
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_124

    .line 3245
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v81    # "_result":Ljava/lang/CharSequence;
    :cond_125
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_125

    .line 3251
    .end local v81    # "_result":Ljava/lang/CharSequence;
    :sswitch_c3
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3252
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v81

    .line 3253
    .restart local v81    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3254
    if-eqz v81, :cond_126

    .line 3255
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3256
    const/4 v6, 0x1

    move-object/from16 v0, v81

    move-object/from16 v1, p3

    invoke-static {v0, v1, v6}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3261
    :goto_126
    const/4 v6, 0x1

    return v6

    .line 3259
    :cond_126
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_126

    .line 3265
    .end local v81    # "_result":Ljava/lang/CharSequence;
    :sswitch_c4
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 3268
    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v81

    .line 3269
    .restart local v81    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3270
    if-eqz v81, :cond_127

    .line 3271
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3272
    const/4 v6, 0x1

    move-object/from16 v0, v81

    move-object/from16 v1, p3

    invoke-static {v0, v1, v6}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3277
    :goto_127
    const/4 v6, 0x1

    return v6

    .line 3275
    :cond_127
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_127

    .line 3281
    .end local v41    # "_arg0":I
    .end local v81    # "_result":Ljava/lang/CharSequence;
    :sswitch_c5
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3282
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserProvisioningState()I

    move-result v70

    .line 3283
    .restart local v70    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3284
    move-object/from16 v0, p3

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3285
    const/4 v6, 0x1

    return v6

    .line 3289
    .end local v70    # "_result":I
    :sswitch_c6
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 3293
    .restart local v41    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 3294
    .restart local v46    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserProvisioningState(II)V

    .line 3295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3296
    const/4 v6, 0x1

    return v6

    .line 3300
    .end local v41    # "_arg0":I
    .end local v46    # "_arg1":I
    :sswitch_c7
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_128

    .line 3303
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3309
    :goto_128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v57

    .line 3310
    .restart local v57    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 3311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3312
    const/4 v6, 0x1

    return v6

    .line 3306
    .end local v57    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_128
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_128

    .line 3316
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c8
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_129

    .line 3319
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3324
    :goto_129
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v88

    .line 3325
    .restart local v88    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3326
    move-object/from16 v0, p3

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3327
    const/4 v6, 0x1

    return v6

    .line 3322
    .end local v88    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_129
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_129

    .line 3331
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c9
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3332
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAffiliatedUser()Z

    move-result v89

    .line 3333
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3334
    if-eqz v89, :cond_12a

    const/4 v6, 0x1

    :goto_12a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3335
    const/4 v6, 0x1

    return v6

    .line 3334
    :cond_12a
    const/4 v6, 0x0

    goto :goto_12a

    .line 3339
    .end local v89    # "_result":Z
    :sswitch_ca
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12b

    .line 3342
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3348
    :goto_12b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12c

    const/16 v58, 0x1

    .line 3349
    .restart local v58    # "_arg1":Z
    :goto_12c
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V

    .line 3350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3351
    const/4 v6, 0x1

    return v6

    .line 3345
    .end local v58    # "_arg1":Z
    :cond_12b
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12b

    .line 3348
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_12c
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_12c

    .line 3355
    .end local v58    # "_arg1":Z
    :sswitch_cb
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12d

    .line 3358
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3363
    :goto_12d
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v89

    .line 3364
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3365
    if-eqz v89, :cond_12e

    const/4 v6, 0x1

    :goto_12e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3366
    const/4 v6, 0x1

    return v6

    .line 3361
    .end local v89    # "_result":Z
    :cond_12d
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12d

    .line 3365
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v89    # "_result":Z
    :cond_12e
    const/4 v6, 0x0

    goto :goto_12e

    .line 3370
    .end local v89    # "_result":Z
    :sswitch_cc
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12f

    .line 3373
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3378
    :goto_12f
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    move-result-object v77

    .line 3379
    .local v77, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3380
    if-eqz v77, :cond_130

    .line 3381
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3382
    const/4 v6, 0x1

    move-object/from16 v0, v77

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3387
    :goto_130
    const/4 v6, 0x1

    return v6

    .line 3376
    .end local v77    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_12f
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12f

    .line 3385
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v77    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_130
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_130

    .line 3391
    .end local v77    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_cd
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_131

    .line 3394
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3399
    :goto_131
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    move-result-object v77

    .line 3400
    .restart local v77    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3401
    if-eqz v77, :cond_132

    .line 3402
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3403
    const/4 v6, 0x1

    move-object/from16 v0, v77

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3408
    :goto_132
    const/4 v6, 0x1

    return v6

    .line 3397
    .end local v77    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_131
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_131

    .line 3406
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v77    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_132
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_132

    .line 3412
    .end local v77    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_ce
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 3415
    .restart local v21    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v89

    .line 3416
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3417
    if-eqz v89, :cond_133

    const/4 v6, 0x1

    :goto_133
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3418
    const/4 v6, 0x1

    return v6

    .line 3417
    :cond_133
    const/4 v6, 0x0

    goto :goto_133

    .line 3422
    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v89    # "_result":Z
    :sswitch_cf
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 3425
    .restart local v21    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    .line 3426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3427
    const/4 v6, 0x1

    return v6

    .line 3431
    .end local v21    # "_arg0":Ljava/lang/String;
    :sswitch_d0
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3432
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioned()Z

    move-result v89

    .line 3433
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3434
    if-eqz v89, :cond_134

    const/4 v6, 0x1

    :goto_134
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3435
    const/4 v6, 0x1

    return v6

    .line 3434
    :cond_134
    const/4 v6, 0x0

    goto :goto_134

    .line 3439
    .end local v89    # "_result":Z
    :sswitch_d1
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3440
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioningConfigApplied()Z

    move-result v89

    .line 3441
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3442
    if-eqz v89, :cond_135

    const/4 v6, 0x1

    :goto_135
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3443
    const/4 v6, 0x1

    return v6

    .line 3442
    :cond_135
    const/4 v6, 0x0

    goto :goto_135

    .line 3447
    .end local v89    # "_result":Z
    :sswitch_d2
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3448
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceProvisioningConfigApplied()V

    .line 3449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3450
    const/4 v6, 0x1

    return v6

    .line 3454
    :sswitch_d3
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3455
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceUpdateUserSetupComplete()V

    .line 3456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3457
    const/4 v6, 0x1

    return v6

    .line 3461
    :sswitch_d4
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_136

    .line 3464
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3470
    :goto_136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_137

    const/16 v58, 0x1

    .line 3471
    .restart local v58    # "_arg1":Z
    :goto_137
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 3472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3473
    const/4 v6, 0x1

    return v6

    .line 3467
    .end local v58    # "_arg1":Z
    :cond_136
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_136

    .line 3470
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_137
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_137

    .line 3477
    .end local v58    # "_arg1":Z
    :sswitch_d5
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_138

    .line 3480
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3485
    :goto_138
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v89

    .line 3486
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3487
    if-eqz v89, :cond_139

    const/4 v6, 0x1

    :goto_139
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3488
    const/4 v6, 0x1

    return v6

    .line 3483
    .end local v89    # "_result":Z
    :cond_138
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_138

    .line 3487
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v89    # "_result":Z
    :cond_139
    const/4 v6, 0x0

    goto :goto_139

    .line 3492
    .end local v89    # "_result":Z
    :sswitch_d6
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13a

    .line 3495
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3501
    :goto_13a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13b

    const/16 v58, 0x1

    .line 3502
    .restart local v58    # "_arg1":Z
    :goto_13b
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNetworkLoggingEnabled(Landroid/content/ComponentName;Z)V

    .line 3503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3504
    const/4 v6, 0x1

    return v6

    .line 3498
    .end local v58    # "_arg1":Z
    :cond_13a
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_13a

    .line 3501
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :cond_13b
    const/16 v58, 0x0

    .restart local v58    # "_arg1":Z
    goto :goto_13b

    .line 3508
    .end local v58    # "_arg1":Z
    :sswitch_d7
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13c

    .line 3511
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3516
    :goto_13c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v89

    .line 3517
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3518
    if-eqz v89, :cond_13d

    const/4 v6, 0x1

    :goto_13d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3519
    const/4 v6, 0x1

    return v6

    .line 3514
    .end local v89    # "_result":Z
    :cond_13c
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_13c

    .line 3518
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v89    # "_result":Z
    :cond_13d
    const/4 v6, 0x0

    goto :goto_13d

    .line 3523
    .end local v89    # "_result":Z
    :sswitch_d8
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13e

    .line 3526
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3532
    :goto_13e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 3533
    .restart local v22    # "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveNetworkLogs(Landroid/content/ComponentName;J)Ljava/util/List;

    move-result-object v84

    .line 3534
    .local v84, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/NetworkEvent;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3535
    move-object/from16 v0, p3

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3536
    const/4 v6, 0x1

    return v6

    .line 3529
    .end local v22    # "_arg1":J
    .end local v84    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/NetworkEvent;>;"
    :cond_13e
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_13e

    .line 3540
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d9
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13f

    .line 3543
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3549
    :goto_13f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v35

    .line 3551
    .local v35, "_arg1":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 3553
    .local v36, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_140

    .line 3554
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/Intent;

    .line 3560
    :goto_140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v38

    .line 3562
    .local v38, "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 3564
    .local v39, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .local v40, "_arg6":I
    move-object/from16 v33, p0

    move-object/from16 v34, v7

    .line 3565
    invoke-virtual/range {v33 .. v40}, Landroid/app/admin/IDevicePolicyManager$Stub;->bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z

    move-result v89

    .line 3566
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3567
    if-eqz v89, :cond_141

    const/4 v6, 0x1

    :goto_141
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3568
    const/4 v6, 0x1

    return v6

    .line 3546
    .end local v35    # "_arg1":Landroid/app/IApplicationThread;
    .end local v36    # "_arg2":Landroid/os/IBinder;
    .end local v38    # "_arg4":Landroid/app/IServiceConnection;
    .end local v39    # "_arg5":I
    .end local v40    # "_arg6":I
    .end local v89    # "_result":Z
    :cond_13f
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_13f

    .line 3557
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v35    # "_arg1":Landroid/app/IApplicationThread;
    .restart local v36    # "_arg2":Landroid/os/IBinder;
    :cond_140
    const/16 v37, 0x0

    .local v37, "_arg3":Landroid/content/Intent;
    goto :goto_140

    .line 3567
    .end local v37    # "_arg3":Landroid/content/Intent;
    .restart local v38    # "_arg4":Landroid/app/IServiceConnection;
    .restart local v39    # "_arg5":I
    .restart local v40    # "_arg6":I
    .restart local v89    # "_result":Z
    :cond_141
    const/4 v6, 0x0

    goto :goto_141

    .line 3572
    .end local v35    # "_arg1":Landroid/app/IApplicationThread;
    .end local v36    # "_arg2":Landroid/os/IBinder;
    .end local v38    # "_arg4":Landroid/app/IServiceConnection;
    .end local v39    # "_arg5":I
    .end local v40    # "_arg6":I
    .end local v89    # "_result":Z
    :sswitch_da
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_142

    .line 3575
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3580
    :goto_142
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v87

    .line 3581
    .local v87, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3582
    move-object/from16 v0, p3

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3583
    const/4 v6, 0x1

    return v6

    .line 3578
    .end local v87    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_142
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_142

    .line 3587
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    :sswitch_db
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3588
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastSecurityLogRetrievalTime()J

    move-result-wide v72

    .line 3589
    .restart local v72    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3590
    move-object/from16 v0, p3

    move-wide/from16 v1, v72

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3591
    const/4 v6, 0x1

    return v6

    .line 3595
    .end local v72    # "_result":J
    :sswitch_dc
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3596
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastBugReportRequestTime()J

    move-result-wide v72

    .line 3597
    .restart local v72    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3598
    move-object/from16 v0, p3

    move-wide/from16 v1, v72

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3599
    const/4 v6, 0x1

    return v6

    .line 3603
    .end local v72    # "_result":J
    :sswitch_dd
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3604
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastNetworkLogRetrievalTime()J

    move-result-wide v72

    .line 3605
    .restart local v72    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3606
    move-object/from16 v0, p3

    move-wide/from16 v1, v72

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3607
    const/4 v6, 0x1

    return v6

    .line 3611
    .end local v72    # "_result":J
    :sswitch_de
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_143

    .line 3614
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3620
    :goto_143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v59

    .line 3621
    .local v59, "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setResetPasswordToken(Landroid/content/ComponentName;[B)Z

    move-result v89

    .line 3622
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3623
    if-eqz v89, :cond_144

    const/4 v6, 0x1

    :goto_144
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3624
    const/4 v6, 0x1

    return v6

    .line 3617
    .end local v59    # "_arg1":[B
    .end local v89    # "_result":Z
    :cond_143
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_143

    .line 3623
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v59    # "_arg1":[B
    .restart local v89    # "_result":Z
    :cond_144
    const/4 v6, 0x0

    goto :goto_144

    .line 3628
    .end local v59    # "_arg1":[B
    .end local v89    # "_result":Z
    :sswitch_df
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_145

    .line 3631
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3636
    :goto_145
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearResetPasswordToken(Landroid/content/ComponentName;)Z

    move-result v89

    .line 3637
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3638
    if-eqz v89, :cond_146

    const/4 v6, 0x1

    :goto_146
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3639
    const/4 v6, 0x1

    return v6

    .line 3634
    .end local v89    # "_result":Z
    :cond_145
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_145

    .line 3638
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v89    # "_result":Z
    :cond_146
    const/4 v6, 0x0

    goto :goto_146

    .line 3643
    .end local v89    # "_result":Z
    :sswitch_e0
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_147

    .line 3646
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3651
    :goto_147
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isResetPasswordTokenActive(Landroid/content/ComponentName;)Z

    move-result v89

    .line 3652
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3653
    if-eqz v89, :cond_148

    const/4 v6, 0x1

    :goto_148
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3654
    const/4 v6, 0x1

    return v6

    .line 3649
    .end local v89    # "_result":Z
    :cond_147
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_147

    .line 3653
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v89    # "_result":Z
    :cond_148
    const/4 v6, 0x0

    goto :goto_148

    .line 3658
    .end local v89    # "_result":Z
    :sswitch_e1
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_149

    .line 3661
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3667
    :goto_149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3669
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 3671
    .restart local v9    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v66

    .line 3672
    .local v66, "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v7, v8, v9, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z

    move-result v89

    .line 3673
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3674
    if-eqz v89, :cond_14a

    const/4 v6, 0x1

    :goto_14a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3675
    const/4 v6, 0x1

    return v6

    .line 3664
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":[B
    .end local v66    # "_arg3":I
    .end local v89    # "_result":Z
    :cond_149
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/ComponentName;
    goto :goto_149

    .line 3674
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":[B
    .restart local v66    # "_arg3":I
    .restart local v89    # "_result":Z
    :cond_14a
    const/4 v6, 0x0

    goto :goto_14a

    .line 3679
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":[B
    .end local v66    # "_arg3":I
    .end local v89    # "_result":Z
    :sswitch_e2
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3680
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCurrentInputMethodSetByOwner()Z

    move-result v89

    .line 3681
    .restart local v89    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3682
    if-eqz v89, :cond_14b

    const/4 v6, 0x1

    :goto_14b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3683
    const/4 v6, 0x1

    return v6

    .line 3682
    :cond_14b
    const/4 v6, 0x0

    goto :goto_14b

    .line 3687
    .end local v89    # "_result":Z
    :sswitch_e3
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14c

    .line 3690
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/os/UserHandle;

    .line 3695
    :goto_14c
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;

    move-result-object v78

    .line 3696
    .local v78, "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3697
    if-eqz v78, :cond_14d

    .line 3698
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3699
    const/4 v6, 0x1

    move-object/from16 v0, v78

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/StringParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3704
    :goto_14d
    const/4 v6, 0x1

    return v6

    .line 3693
    .end local v78    # "_result":Landroid/content/pm/StringParceledListSlice;
    :cond_14c
    const/16 v44, 0x0

    .local v44, "_arg0":Landroid/os/UserHandle;
    goto :goto_14c

    .line 3702
    .end local v44    # "_arg0":Landroid/os/UserHandle;
    .restart local v78    # "_result":Landroid/content/pm/StringParceledListSlice;
    :cond_14d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14d

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
