.class public Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OxygenChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OxygenChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# static fields
.field private static final CHOOSE_LOCK_BEFORE_FINGERPRINT_REQUEST:I = 0x67

.field private static final CHOOSE_LOCK_REQUEST:I = 0x66

.field private static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field private static final ENABLE_ENCRYPTION_REQUEST:I = 0x65

.field public static final ENCRYPT_REQUESTED_DISABLED:Ljava/lang/String; = "encrypt_requested_disabled"

.field public static final ENCRYPT_REQUESTED_QUALITY:Ljava/lang/String; = "encrypt_requested_quality"

.field public static final HIDE_DISABLED_PREFS:Ljava/lang/String; = "hide_disabled_prefs"

.field private static final KEY_SKIP_FINGERPRINT:Ljava/lang/String; = "unlock_skip_fingerprint"

.field private static final KEY_UNLOCK_SET_MANAGED:Ljava/lang/String; = "unlock_set_managed"

.field private static final KEY_UNLOCK_SET_NONE:Ljava/lang/String; = "unlock_set_none"

.field private static final KEY_UNLOCK_SET_OFF:Ljava/lang/String; = "unlock_set_off"

.field private static final KEY_UNLOCK_SET_PASSWORD:Ljava/lang/String; = "unlock_set_password"

.field private static final KEY_UNLOCK_SET_PATTERN:Ljava/lang/String; = "unlock_set_pattern"

.field private static final KEY_UNLOCK_SET_PIN:Ljava/lang/String; = "unlock_set_pin"

.field public static final MINIMUM_QUALITY_KEY:Ljava/lang/String; = "minimum_quality"

.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field private static final PASSWORD_CONFIRMED:Ljava/lang/String; = "password_confirmed"

.field private static final SKIP_FINGERPRINT_REQUEST:I = 0x68

.field private static final TAG:Ljava/lang/String; = "ChooseLockGenericFragment"

.field public static final TAG_FRP_WARNING_DIALOG:Ljava/lang/String; = "frp_warning_dialog"

.field private static final WAITING_FOR_CONFIRMATION:Ljava/lang/String; = "waiting_for_confirmation"


# instance fields
.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mForChangeCredRequiredForBoot:Z

.field protected mForFingerprint:Z

.field private mHasChallenge:Z

.field private mHideDrawer:Z

.field private mIsSetNewPassword:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

.field private mPasswordConfirmed:Z

.field private mRequirePassword:Z

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private mWaitingForConfirmation:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;
    .param p1, "parentUserId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->removeManagedProfileFingerprintsAndFinishIfNecessary(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 118
    iput-boolean v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    .line 132
    iput-boolean v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 91
    return-void
.end method

.method private getIntentForUnlockMethod(IZ)Landroid/content/Intent;
    .locals 12
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 695
    const/4 v11, 0x0

    .line 696
    .local v11, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 697
    .local v1, "context":Landroid/content/Context;
    const/high16 v0, 0x80000

    if-lt p1, v0, :cond_2

    .line 698
    iget-boolean v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getLockManagedPasswordIntent(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 721
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v11, :cond_1

    .line 722
    const-string/jumbo v0, ":settings:hide_drawer"

    iget-boolean v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual {v11, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 724
    :cond_1
    return-object v11

    .line 699
    .restart local v11    # "intent":Landroid/content/Intent;
    :cond_2
    const/high16 v0, 0x20000

    if-lt p1, v0, :cond_5

    .line 700
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v5, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v3

    .line 701
    .local v3, "minLength":I
    const/4 v0, 0x4

    if-ge v3, v0, :cond_3

    .line 702
    const/4 v3, 0x4

    .line 704
    :cond_3
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .line 705
    .local v4, "maxLength":I
    iget-boolean v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v0, :cond_4

    .line 707
    iget-boolean v5, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-wide v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    iget v8, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object v0, p0

    move v2, p1

    .line 706
    invoke-virtual/range {v0 .. v8}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZJI)Landroid/content/Intent;

    move-result-object v11

    .local v11, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 710
    .local v11, "intent":Landroid/content/Intent;
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-object v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    iget v7, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object v0, p0

    move v2, p1

    .line 709
    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .local v11, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 712
    .end local v3    # "minLength":I
    .end local v4    # "maxLength":I
    .local v11, "intent":Landroid/content/Intent;
    :cond_5
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 713
    iget-boolean v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v0, :cond_6

    .line 714
    iget-boolean v7, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 715
    iget-wide v8, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    iget v10, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object v5, p0

    move-object v6, v1

    .line 714
    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;

    move-result-object v11

    .local v11, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 717
    .local v11, "intent":Landroid/content/Intent;
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 718
    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 717
    invoke-virtual {p0, v1, v0, v2, v5}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .local v11, "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private getKeyForCurrent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 456
    iget v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 455
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    .line 457
    .local v0, "credentialOwner":I
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    const-string/jumbo v1, "unlock_set_off"

    return-object v1

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 475
    const/4 v1, 0x0

    return-object v1

    .line 462
    :sswitch_0
    const-string/jumbo v1, "unlock_set_pattern"

    return-object v1

    .line 465
    :sswitch_1
    const-string/jumbo v1, "unlock_set_pin"

    return-object v1

    .line 469
    :sswitch_2
    const-string/jumbo v1, "unlock_set_password"

    return-object v1

    .line 471
    :sswitch_3
    const-string/jumbo v1, "unlock_set_managed"

    return-object v1

    .line 473
    :sswitch_4
    const-string/jumbo v1, "unlock_set_none"

    return-object v1

    .line 460
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x80000 -> :sswitch_3
    .end sparse-switch
.end method

.method private getResIdForFactoryResetProtectionWarningMessage()I
    .locals 4

    .prologue
    .line 808
    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    .line 809
    .local v0, "hasFingerprints":Z
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v1

    .line 810
    .local v1, "isProfile":Z
    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 848
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 849
    const v2, 0x7f0f078b

    return v2

    .line 812
    :sswitch_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 813
    const v2, 0x7f0f0785

    return v2

    .line 815
    :cond_0
    if-eqz v0, :cond_1

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    .line 816
    const v2, 0x7f0f077d

    return v2

    .line 817
    :cond_1
    if-eqz v1, :cond_2

    .line 818
    const v2, 0x7f0f0784

    return v2

    .line 820
    :cond_2
    const v2, 0x7f0f077c

    return v2

    .line 824
    :sswitch_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 825
    const v2, 0x7f0f0787

    return v2

    .line 826
    :cond_3
    if-eqz v0, :cond_4

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_4

    .line 827
    const v2, 0x7f0f077f

    return v2

    .line 828
    :cond_4
    if-eqz v1, :cond_5

    .line 829
    const v2, 0x7f0f0786

    return v2

    .line 831
    :cond_5
    const v2, 0x7f0f077e

    return v2

    .line 837
    :sswitch_2
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 838
    const v2, 0x7f0f0789

    return v2

    .line 840
    :cond_6
    if-eqz v0, :cond_7

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_7

    .line 841
    const v2, 0x7f0f0781

    return v2

    .line 842
    :cond_7
    if-eqz v1, :cond_8

    .line 843
    const v2, 0x7f0f0788

    return v2

    .line 845
    :cond_8
    const v2, 0x7f0f0780

    return v2

    .line 851
    :cond_9
    if-eqz v0, :cond_a

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    .line 852
    const v2, 0x7f0f0783

    return v2

    .line 853
    :cond_a
    if-eqz v1, :cond_b

    .line 854
    const v2, 0x7f0f078a

    return v2

    .line 856
    :cond_b
    const v2, 0x7f0f0782

    return v2

    .line 810
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x80000 -> :sswitch_2
    .end sparse-switch
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .locals 3

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v0

    .line 803
    .local v0, "isProfile":Z
    if-eqz v0, :cond_0

    const v1, 0x7f0f077b

    :goto_0
    return v1

    .line 804
    :cond_0
    const v1, 0x7f0f077a

    goto :goto_0
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .locals 1
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    .line 862
    const-string/jumbo v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 862
    :goto_0
    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 8
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 280
    const-string/jumbo v6, "device_policy"

    invoke-virtual {p0, v6}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 281
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 282
    iget v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 283
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v6

    .line 281
    if-eqz v6, :cond_1

    .line 284
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 281
    if-eqz v6, :cond_1

    .line 285
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 281
    if-eqz v6, :cond_1

    .line 286
    iput p1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 287
    iput-boolean p2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(IZ)Landroid/content/Intent;

    move-result-object v5

    .line 292
    .local v5, "unlockMethodIntent":Landroid/content/Intent;
    const-string/jumbo v6, "for_cred_req_boot"

    .line 293
    iget-boolean v7, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 291
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 298
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 299
    .local v0, "accEn":Z
    iget-object v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    xor-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v4

    .line 300
    .local v4, "required":Z
    invoke-virtual {p0, v1, p1, v4, v5}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 302
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "for_fingerprint"

    .line 303
    iget-boolean v7, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 302
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 304
    const-string/jumbo v6, ":settings:hide_drawer"

    iget-boolean v7, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    iget-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v6, :cond_0

    .line 308
    const/16 v6, 0x67

    .line 305
    :goto_0
    invoke-virtual {p0, v3, v6}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 319
    .end local v0    # "accEn":Z
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "required":Z
    .end local v5    # "unlockMethodIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 309
    .restart local v0    # "accEn":Z
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "required":Z
    .restart local v5    # "unlockMethodIntent":Landroid/content/Intent;
    :cond_0
    const/16 v6, 0x65

    goto :goto_0

    .line 311
    .end local v0    # "accEn":Z
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "required":Z
    .end local v5    # "unlockMethodIntent":Landroid/content/Intent;
    :cond_1
    iget-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v6, :cond_2

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 314
    return-void

    .line 316
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_1
.end method

.method private removeAllFingerprintForUserAndFinish(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 728
    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 729
    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, p1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 732
    move v6, p1

    .line 733
    .local v6, "groupId":I
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 734
    .local v0, "finger":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 735
    new-instance v2, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$1;-><init>(Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;I)V

    .line 734
    invoke-virtual {v1, v0, p1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 764
    .end local v0    # "finger":Landroid/hardware/fingerprint/Fingerprint;
    .end local v6    # "groupId":I
    :goto_0
    return-void

    .line 755
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->removeManagedProfileFingerprintsAndFinishIfNecessary(I)V

    goto :goto_0

    .line 762
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method private removeManagedProfileFingerprintsAndFinishIfNecessary(I)V
    .locals 8
    .param p1, "parentUserId"    # I

    .prologue
    .line 767
    iget-object v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 768
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 769
    .local v4, "um":Landroid/os/UserManager;
    const/4 v0, 0x0

    .line 770
    .local v0, "hasChildProfile":Z
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_0

    .line 772
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 773
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 774
    .local v3, "profilesSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 775
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 776
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 777
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    .line 776
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 778
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    .line 779
    const/4 v0, 0x1

    .line 784
    .end local v1    # "i":I
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "profilesSize":I
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    if-nez v0, :cond_1

    .line 785
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 787
    :cond_1
    return-void

    .line 774
    .restart local v1    # "i":I
    .restart local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "profilesSize":I
    .restart local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 4
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 867
    const v0, 0x16058

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 869
    const-string/jumbo v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {p0, v3, v1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 890
    :goto_0
    return v1

    .line 872
    :cond_0
    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 873
    invoke-virtual {p0, v3, v3}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 875
    :cond_1
    const-string/jumbo v0, "unlock_set_managed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 876
    const/high16 v0, 0x80000

    invoke-direct {p0, v0, v3}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 877
    :cond_2
    const-string/jumbo v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 879
    const/high16 v0, 0x10000

    .line 878
    invoke-direct {p0, v0, v3}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 880
    :cond_3
    const-string/jumbo v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 882
    const/high16 v0, 0x20000

    .line 881
    invoke-direct {p0, v0, v3}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 883
    :cond_4
    const-string/jumbo v0, "unlock_set_password"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 885
    const/high16 v0, 0x40000

    .line 884
    invoke-direct {p0, v0, v3}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 887
    :cond_5
    const-string/jumbo v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Encountered unknown unlock method to set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return v3
.end method

.method private showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "unlockMethodToSet"    # Ljava/lang/String;

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v2

    .line 895
    .local v2, "title":I
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningMessage()I

    move-result v1

    .line 897
    .local v1, "message":I
    invoke-static {v2, v1, p1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(IILjava/lang/String;)Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    .line 899
    .local v0, "dialog":Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "frp_warning_dialog"

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 900
    return-void
.end method

.method private updateCurrentPreference()V
    .locals 3

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getKeyForCurrent()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "currentKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 449
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_0

    .line 450
    const v2, 0x7f0f076c

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 452
    :cond_0
    return-void
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 7

    .prologue
    .line 582
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 583
    return-void

    .line 586
    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 587
    return-void

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    .line 591
    const/4 v6, -0x1

    .line 590
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 592
    return-void

    .line 595
    :cond_2
    const v5, 0x7f0f0c2f

    invoke-virtual {p0, v5}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 598
    .local v3, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 599
    .local v2, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_6

    .line 600
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 601
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "unlock_set_pattern"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 606
    :cond_3
    :goto_1
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 599
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    :cond_5
    const-string/jumbo v6, "unlock_set_pin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "unlock_set_password"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "unlock_set_managed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 610
    .end local v1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_6
    return-void
.end method

.method private updatePreferenceText()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 410
    iget-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v6, :cond_2

    .line 411
    const/4 v6, 0x3

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v6, "unlock_set_pattern"

    aput-object v6, v1, v5

    .line 412
    const-string/jumbo v6, "unlock_set_pin"

    const/4 v7, 0x1

    aput-object v6, v1, v7

    .line 413
    const-string/jumbo v6, "unlock_set_password"

    const/4 v7, 0x2

    aput-object v6, v1, v7

    .line 416
    .local v1, "key":[Ljava/lang/String;
    sget-object v6, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v6}, Lcom/oneplus/settings/utils/OPUtils;->isSurportFaceUnlock(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 417
    const v6, 0x7f0f0775

    .line 418
    const v7, 0x7f0f0776

    .line 419
    const v8, 0x7f0f0777

    .line 417
    filled-new-array {v6, v7, v8}, [I

    move-result-object v4

    .line 426
    .local v4, "res":[I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v1

    if-ge v0, v6, :cond_2

    .line 427
    aget-object v6, v1, v0

    invoke-virtual {p0, v6}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 428
    .local v3, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v3, :cond_0

    .line 429
    aget v6, v4, v0

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 426
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 421
    .end local v0    # "i":I
    .end local v3    # "pref":Landroid/support/v7/preference/Preference;
    .end local v4    # "res":[I
    :cond_1
    const v6, 0x7f0f076d

    .line 422
    const v7, 0x7f0f076e

    .line 423
    const v8, 0x7f0f076f

    .line 421
    filled-new-array {v6, v7, v8}, [I

    move-result-object v4

    .restart local v4    # "res":[I
    goto :goto_0

    .line 434
    .end local v1    # "key":[Ljava/lang/String;
    .end local v4    # "res":[I
    :cond_2
    iget-object v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual {v6}, Lcom/android/settings/ManagedLockPasswordProvider;->isSettingManagedPasswordSupported()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 435
    const-string/jumbo v6, "unlock_set_managed"

    invoke-virtual {p0, v6}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 436
    .local v2, "managed":Landroid/support/v7/preference/Preference;
    iget-object v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    iget-boolean v7, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v6, v7}, Lcom/android/settings/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 441
    .end local v2    # "managed":Landroid/support/v7/preference/Preference;
    :goto_2
    iget-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v6, :cond_3

    iget-boolean v5, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    :cond_3
    if-nez v5, :cond_4

    .line 442
    const-string/jumbo v5, "unlock_skip_fingerprint"

    invoke-virtual {p0, v5}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->removePreference(Ljava/lang/String;)V

    .line 444
    :cond_4
    return-void

    .line 438
    :cond_5
    const-string/jumbo v6, "unlock_set_managed"

    invoke-virtual {p0, v6}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updatePreferencesOrFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 378
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "lockscreen.password_type"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 379
    .local v3, "quality":I
    if-ne v3, v5, :cond_1

    .line 381
    const-string/jumbo v4, "minimum_quality"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 382
    invoke-direct {p0, v3}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result v3

    .line 384
    const-string/jumbo v4, "hide_disabled_prefs"

    .line 383
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 385
    .local v0, "hideDisabledPrefs":Z
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 386
    .local v2, "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 387
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    .line 390
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    .line 391
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceText()V

    .line 392
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updateCurrentPreference()V

    .line 393
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    .line 397
    .end local v0    # "hideDisabledPrefs":Z
    .end local v2    # "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-virtual {p0, v3, v6}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private upgradeQuality(I)I
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 481
    return p1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 4
    .param p1, "quality"    # I

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    .line 487
    .local v0, "minQuality":I
    if-ge p1, v0, :cond_0

    .line 488
    move p1, v0

    .line 490
    :cond_0
    return p1
.end method


# virtual methods
.method protected addHeaderView()V
    .locals 2

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 242
    const v0, 0x7f040138

    invoke-virtual {p0, v0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->setHeaderView(I)V

    .line 243
    iget-boolean v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v0

    const v1, 0x7f0a028b

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    const v1, 0x7f0f0771

    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    :cond_0
    return-void
.end method

.method protected addPreferences()V
    .locals 2

    .prologue
    const v1, 0x7f0a0013

    .line 400
    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 403
    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {p0, v0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 404
    const-string/jumbo v0, "unlock_skip_fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 405
    const-string/jumbo v0, "unlock_set_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 406
    const-string/jumbo v0, "unlock_set_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 407
    return-void
.end method

.method protected disableUnusablePreferences(IZ)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "hideDisabledPrefs"    # Z

    .prologue
    .line 502
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 503
    return-void
.end method

.method protected disableUnusablePreferencesImpl(IZ)V
    .locals 12
    .param p1, "quality"    # I
    .param p2, "hideDisabled"    # Z

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 515
    .local v4, "entries":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v9, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v10, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    .line 517
    .local v0, "adminEnforcedQuality":I
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 516
    invoke-static {v9, v10}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    .line 518
    .local v3, "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_19

    .line 519
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v7

    .line 520
    .local v7, "pref":Landroid/support/v7/preference/Preference;
    instance-of v9, v7, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v9, :cond_3

    .line 521
    invoke-virtual {v7}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 522
    .local v6, "key":Ljava/lang/String;
    const/4 v2, 0x1

    .line 523
    .local v2, "enabled":Z
    const/4 v8, 0x1

    .line 524
    .local v8, "visible":Z
    const/4 v1, 0x0

    .line 525
    .local v1, "disabledByAdmin":Z
    const-string/jumbo v9, "unlock_set_off"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 526
    if-gtz p1, :cond_4

    const/4 v2, 0x1

    .line 527
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f120014

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 528
    const/4 v2, 0x0

    .line 529
    const/4 v8, 0x0

    .line 531
    :cond_0
    if-lez v0, :cond_5

    const/4 v1, 0x1

    .line 559
    .end local v2    # "enabled":Z
    :cond_1
    :goto_2
    if-eqz p2, :cond_2

    .line 560
    move v8, v2

    .line 562
    .end local v8    # "visible":Z
    :cond_2
    if-nez v8, :cond_16

    .line 563
    invoke-virtual {v4, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 518
    .end local v1    # "disabledByAdmin":Z
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "pref":Landroid/support/v7/preference/Preference;
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 526
    .restart local v1    # "disabledByAdmin":Z
    .restart local v2    # "enabled":Z
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "pref":Landroid/support/v7/preference/Preference;
    .restart local v8    # "visible":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 531
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 533
    :cond_6
    const-string/jumbo v9, "unlock_set_none"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 534
    iget v9, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eq v9, v10, :cond_7

    .line 536
    const/4 v8, 0x0

    .line 538
    :cond_7
    if-gtz p1, :cond_8

    const/4 v2, 0x1

    .line 539
    :goto_4
    if-lez v0, :cond_9

    const/4 v1, 0x1

    goto :goto_2

    .line 538
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 539
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 541
    :cond_a
    const-string/jumbo v9, "unlock_set_pattern"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 542
    const/high16 v9, 0x10000

    if-gt p1, v9, :cond_b

    const/4 v2, 0x1

    .line 544
    :goto_5
    const/high16 v9, 0x10000

    .line 543
    if-le v0, v9, :cond_c

    const/4 v1, 0x1

    goto :goto_2

    .line 542
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    .line 543
    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    .line 545
    :cond_d
    const-string/jumbo v9, "unlock_set_pin"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 546
    const/high16 v9, 0x30000

    if-gt p1, v9, :cond_e

    const/4 v2, 0x1

    .line 548
    :goto_6
    const/high16 v9, 0x30000

    .line 547
    if-le v0, v9, :cond_f

    const/4 v1, 0x1

    goto :goto_2

    .line 546
    :cond_e
    const/4 v2, 0x0

    goto :goto_6

    .line 547
    :cond_f
    const/4 v1, 0x0

    goto :goto_2

    .line 549
    :cond_10
    const-string/jumbo v9, "unlock_set_password"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 550
    const/high16 v9, 0x60000

    if-gt p1, v9, :cond_11

    const/4 v2, 0x1

    .line 552
    :goto_7
    const/high16 v9, 0x60000

    .line 551
    if-le v0, v9, :cond_12

    const/4 v1, 0x1

    goto :goto_2

    .line 550
    :cond_11
    const/4 v2, 0x0

    goto :goto_7

    .line 551
    :cond_12
    const/4 v1, 0x0

    goto :goto_2

    .line 553
    :cond_13
    const-string/jumbo v9, "unlock_set_managed"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 554
    const/high16 v9, 0x80000

    if-gt p1, v9, :cond_14

    .line 555
    iget-object v9, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual {v9}, Lcom/android/settings/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result v2

    .line 557
    .end local v2    # "enabled":Z
    :goto_8
    const/high16 v9, 0x80000

    .line 556
    if-le v0, v9, :cond_15

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 554
    .restart local v2    # "enabled":Z
    :cond_14
    const/4 v2, 0x0

    goto :goto_8

    .line 556
    .end local v2    # "enabled":Z
    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 564
    .end local v8    # "visible":Z
    :cond_16
    if-eqz v1, :cond_17

    if-eqz v3, :cond_17

    .line 565
    check-cast v7, Lcom/android/settingslib/RestrictedPreference;

    .end local v7    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v7, v3}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_3

    .line 566
    .restart local v7    # "pref":Landroid/support/v7/preference/Preference;
    :cond_17
    if-nez v2, :cond_18

    move-object v9, v7

    .line 569
    check-cast v9, Lcom/android/settingslib/RestrictedPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 570
    const v9, 0x7f0f0772

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 571
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 573
    :cond_18
    check-cast v7, Lcom/android/settingslib/RestrictedPreference;

    .end local v7    # "pref":Landroid/support/v7/preference/Preference;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_3

    .line 577
    .end local v1    # "disabledByAdmin":Z
    .end local v6    # "key":Ljava/lang/String;
    :cond_19
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z
    .param p4, "unlockMethodIntent"    # Landroid/content/Intent;

    .prologue
    .line 654
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 798
    const v0, 0x7f0f0ebe

    return v0
.end method

.method protected getLockManagedPasswordIntent(ZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "requirePassword"    # Z
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/ManagedLockPasswordProvider;->createIntent(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZJI)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "challenge"    # J
    .param p8, "userId"    # I

    .prologue
    .line 626
    invoke-static/range {p1 .. p8}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .prologue
    .line 632
    invoke-static/range {p1 .. p7}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "confirmCredentials"    # Z
    .param p7, "userId"    # I

    .prologue
    .line 619
    invoke-static/range {p1 .. p7}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I

    .prologue
    .line 644
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/settings/OxygenChooseLockPattern;->createIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 649
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/OxygenChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "confirmCredentials"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 638
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/OxygenChooseLockPattern;->createIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 138
    const/16 v0, 0x1b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 323
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 324
    iput-boolean v3, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 325
    const/16 v2, 0x64

    if-ne p1, v2, :cond_3

    if-ne p2, v1, :cond_3

    .line 326
    iput-boolean v4, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 327
    const-string/jumbo v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 328
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 329
    iget-boolean v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 332
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 331
    invoke-direct {p0, v1, v3}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    .line 361
    .end local p2    # "resultCode":I
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v1, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 364
    :cond_1
    return-void

    .line 334
    .restart local p2    # "resultCode":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 337
    :cond_3
    const/16 v2, 0x66

    if-eq p1, v2, :cond_4

    .line 338
    const/16 v2, 0x65

    if-ne p1, v2, :cond_6

    .line 339
    :cond_4
    if-nez p2, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v1, :cond_0

    .line 340
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 343
    :cond_6
    const/16 v2, 0x67

    if-ne p1, v2, :cond_8

    .line 344
    if-ne p2, v4, :cond_8

    .line 345
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_7

    .line 347
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 349
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 351
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8
    const/16 v2, 0x68

    if-ne p1, v2, :cond_a

    .line 352
    if-eqz p2, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 354
    if-ne p2, v4, :cond_9

    move p2, v1

    .line 353
    .end local p2    # "resultCode":I
    :cond_9
    invoke-virtual {v2, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 358
    .restart local p2    # "resultCode":I
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 143
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "chooseLockAction":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v9, "fingerprint"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/FingerprintManager;

    .line 146
    iput-object v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 148
    const-string/jumbo v6, "device_policy"

    invoke-virtual {p0, v6}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    iput-object v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 149
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 150
    new-instance v6, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 151
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 154
    const-string/jumbo v6, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 155
    const-string/jumbo v6, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 154
    :goto_0
    iput-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 159
    const-string/jumbo v9, "confirm_credentials"

    .line 158
    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 160
    .local v2, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/android/settings/OxygenChooseLockGeneric$InternalActivity;

    if-eqz v6, :cond_0

    .line 161
    xor-int/lit8 v6, v2, 0x1

    iput-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v9, ":settings:hide_drawer"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 166
    const-string/jumbo v9, "has_challenge"

    .line 165
    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 168
    const-string/jumbo v9, "challenge"

    const-wide/16 v10, 0x0

    .line 167
    invoke-virtual {v6, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 170
    const-string/jumbo v9, "for_fingerprint"

    .line 169
    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 172
    const-string/jumbo v9, "for_cred_req_boot"

    .line 171
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :goto_1
    iput-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 173
    iget-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v6, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 181
    const-string/jumbo v9, "password_confirmed"

    .line 180
    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 184
    :cond_1
    if-eqz p1, :cond_2

    .line 185
    const-string/jumbo v6, "password_confirmed"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 186
    const-string/jumbo v6, "waiting_for_confirmation"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 187
    const-string/jumbo v6, "encrypt_requested_quality"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 189
    const-string/jumbo v6, "encrypt_requested_disabled"

    .line 188
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 193
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 192
    invoke-static {v6, v9, v12, v10}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 197
    .local v5, "targetUser":I
    const-string/jumbo v6, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 198
    iget-object v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 197
    if-eqz v6, :cond_9

    .line 201
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 202
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v0, :cond_8

    .end local v0    # "arguments":Landroid/os/Bundle;
    :goto_2
    invoke-static {v6, v0}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v6

    iput v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 208
    :goto_3
    const-string/jumbo v6, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    iget v9, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v6, v9}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v6

    .line 208
    if-eqz v6, :cond_4

    .line 210
    iget-object v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v9, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    .line 208
    if-eqz v6, :cond_4

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v9, 0x7f0f0757

    invoke-virtual {v6, v9}, Landroid/app/Activity;->setTitle(I)V

    .line 214
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v9, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v6, v9}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    .line 216
    iget-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v6, :cond_a

    .line 217
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 218
    iget-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v6, :cond_5

    .line 219
    iget-object v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 220
    iget v7, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 219
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v6

    invoke-direct {p0, v6, v8}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    .line 237
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->addHeaderView()V

    .line 238
    return-void

    .end local v2    # "confirmCredentials":Z
    .end local v5    # "targetUser":I
    :cond_6
    move v6, v7

    .line 154
    goto/16 :goto_0

    .restart local v2    # "confirmCredentials":Z
    :cond_7
    move v6, v8

    .line 171
    goto/16 :goto_1

    .line 203
    .restart local v0    # "arguments":Landroid/os/Bundle;
    .restart local v5    # "targetUser":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    .line 205
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_9
    iput v5, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    goto :goto_3

    .line 222
    :cond_a
    iget-boolean v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v6, :cond_5

    .line 224
    new-instance v3, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 226
    .local v3, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    iget v8, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 225
    invoke-static {v6, v8}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 227
    iget-object v6, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    xor-int/lit8 v4, v6, 0x1

    .line 228
    :goto_5
    if-nez v4, :cond_b

    .line 230
    const v6, 0x7f0f075c

    invoke-virtual {p0, v6}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v8, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 229
    const/16 v9, 0x64

    invoke-virtual {v3, v9, v6, v7, v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 228
    if-eqz v6, :cond_d

    .line 231
    :cond_b
    iput-boolean v7, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 232
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_4

    .line 225
    :cond_c
    const/4 v4, 0x0

    .local v4, "managedProfileWithUnifiedLock":Z
    goto :goto_5

    .line 234
    .end local v4    # "managedProfileWithUnifiedLock":Z
    :cond_d
    iput-boolean v7, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 791
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 794
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 252
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    invoke-direct {p0, v1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    .line 258
    return v4

    .line 259
    :cond_0
    const-string/jumbo v2, "unlock_skip_fingerprint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/OxygenChooseLockGeneric;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .local v0, "chooseLockGenericIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string/jumbo v2, "password_confirmed"

    iget-boolean v3, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    const/16 v2, 0x68

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 264
    return v4

    .line 266
    .end local v0    # "chooseLockGenericIntent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 368
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 370
    const-string/jumbo v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 371
    const-string/jumbo v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 372
    const-string/jumbo v0, "encrypt_requested_quality"

    iget v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 373
    const-string/jumbo v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 374
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 5
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 669
    iget-boolean v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v1, :cond_0

    .line 670
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Tried to update password without confirming it"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 673
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result p1

    .line 674
    invoke-direct {p0, p1, p2}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(IZ)Landroid/content/Intent;

    move-result-object v0

    .line 675
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 677
    iget-boolean v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v1, :cond_1

    .line 678
    const/16 v1, 0x67

    .line 676
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 680
    return-void

    .line 679
    :cond_1
    const/16 v1, 0x66

    goto :goto_0

    .line 683
    :cond_2
    if-nez p1, :cond_3

    .line 684
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 685
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Ljava/lang/String;I)V

    .line 686
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 687
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 688
    iget v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    .line 692
    :goto_1
    return-void

    .line 690
    :cond_3
    iget v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    goto :goto_1
.end method
