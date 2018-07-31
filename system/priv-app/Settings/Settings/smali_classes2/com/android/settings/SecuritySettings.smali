.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/GearPreference$OnGearClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecuritySettings$1;,
        Lcom/android/settings/SecuritySettings$FingerprintPreference;,
        Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;,
        Lcom/android/settings/SecuritySettings$SecuritySubSettings;,
        Lcom/android/settings/SecuritySettings$SummaryProvider;,
        Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;
    }
.end annotation


# static fields
.field private static final ADD_FINGERPRINT_REQUEST:I = 0x67

.field private static final CHANGE_TRUST_AGENT_SETTINGS:I = 0x7e

.field private static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x66

.field private static final CONFIRM_REQUEST:I = 0x65

.field private static final GOTO_APPLOCKER_PAGE_REQUEST:I = 0x68

.field private static final GOTO_EDIT_FINGERPRINT_REQUEST:I = 0x69

.field private static final GOTO_FACEUNLOCK_PAGE_REQUEST:I = 0x6b

.field private static final GOTO_QUICKPAY_PAGE_REQUEST:I = 0x6a

.field private static final KEY_ADVANCED_SECURITY:Ljava/lang/String; = "advanced_security"

.field private static final KEY_APP_LOCKER:Ljava/lang/String; = "oneplus_app_locker"

.field private static final KEY_CREDENTIALS_INSTALL:Ljava/lang/String; = "credentials_install"

.field private static final KEY_CREDENTIALS_MANAGER:Ljava/lang/String; = "credentials_management"

.field private static final KEY_CREDENTIAL_STORAGE_TYPE:Ljava/lang/String; = "credential_storage_type"

.field private static final KEY_DEVICE_ADMIN_CATEGORY:Ljava/lang/String; = "device_admin_category"

.field private static final KEY_ENTERPRISE_PRIVACY:Ljava/lang/String; = "enterprise_privacy"

.field private static final KEY_FINGERPRINT_ADD:Ljava/lang/String; = "key_fingerprint_add"

.field private static final KEY_FINGERPRINT_ITEM_PREFIX:Ljava/lang/String; = "key_fingerprint_item"

.field private static final KEY_MANAGE_TRUST_AGENTS:Ljava/lang/String; = "manage_trust_agents"

.field private static final KEY_ONEPLUS_CATAGORY_QUICK_PAY:Ljava/lang/String; = "privacy_catagory_quick_pay"

.field private static final KEY_ONEPLUS_FACE_UNLOCK:Ljava/lang/String; = "oneplus_face_unlock"

.field private static final KEY_ONEPLUS_QUICK_PAY:Ljava/lang/String; = "oneplus_quick_pay"

.field static final KEY_PACKAGE_VERIFIER_STATUS:Ljava/lang/String; = "security_status_package_verifier"
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation
.end field

.field private static final KEY_PREFERENCE_DIVIDER_LINE_APPLOCKER:Ljava/lang/String; = "preference_divider_line_applocker"

.field private static final KEY_PREFERENCE_DIVIDER_LINE_FACE_UNLOCK:Ljava/lang/String; = "preference_divider_line_face_unlock"

.field private static final KEY_PREFERENCE_DIVIDER_LINE_QUICK_PAY:Ljava/lang/String; = "preference_divider_line_quick_pay"

.field private static final KEY_PRIVACY_CATAGORY:Ljava/lang/String; = "privacy_catagory"

.field private static final KEY_PRIVACY_CATAGORY_FACE_UNLOCK:Ljava/lang/String; = "privacy_catagory_face_unlock"

.field private static final KEY_RESET_CREDENTIALS:Ljava/lang/String; = "credentials_reset"

.field private static final KEY_SCREEN_PINNING:Ljava/lang/String; = "screen_pinning_settings"

.field private static final KEY_SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field private static final KEY_SECURITY_STATUS:Ljava/lang/String; = "security_status"

.field private static final KEY_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field private static final KEY_SIMLOCK_PREFERENCE_DIVIDER_LINE:Ljava/lang/String; = "simlock_preference_divider_line"

.field private static final KEY_SIM_LOCK:Ljava/lang/String; = "sim_lock"

.field private static final KEY_TOGGLE_INSTALL_APPLICATIONS:Ljava/lang/String; = "toggle_install_applications"

.field private static final KEY_TRUST_AGENT:Ljava/lang/String; = "trust_agent"

.field private static final KEY_UNIFICATION:Ljava/lang/String; = "unification"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_UNLOCK_SET_OR_CHANGE_PROFILE:Ljava/lang/String; = "unlock_set_or_change_profile"

.field private static final KEY_USER_CREDENTIALS:Ljava/lang/String; = "user_credentials"

.field private static final KEY_VISIBLE_PATTERN_PROFILE:Ljava/lang/String; = "visiblepattern_profile"

.field private static final MY_USER_ID:I

.field private static final ONLY_ONE_TRUST_AGENT:Z = true

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final PACKAGE_VERIFIER_STATE_ENABLED:I = 0x1

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SECURITY_STATUS_KEY_PREFIX:Ljava/lang/String; = "security_status_"

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST_PROFILE:I = 0x7f

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SecuritySettings"

.field private static final TAG_UNIFICATION_DIALOG:Ljava/lang/String; = "unification_dialog"

.field private static final TRUST_AGENT_CLICK_INTENT:Ljava/lang/String; = "trust_agent_click_intent"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static final UNIFY_LOCK_CONFIRM_DEVICE_REQUEST:I = 0x80

.field private static final UNIFY_LOCK_CONFIRM_PROFILE_REQUEST:I = 0x81

.field private static final UNUNIFY_LOCK_CONFIRM_DEVICE_REQUEST:I = 0x82


# instance fields
.field private isSupportFinger:Z

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mCurrentDevicePassword:Ljava/lang/String;

.field private mCurrentProfilePassword:Ljava/lang/String;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mEnterpriseFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

.field private mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mFaceUnlockPreference:Landroid/support/v7/preference/Preference;

.field private mFingerprintCancel:Landroid/os/CancellationSignal;

.field private mFingerprintEditPreference:Landroid/support/v7/preference/Preference;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprint_list_category:Landroid/support/v7/preference/PreferenceCategory;

.field public mGotoAppLockerClick:Z

.field public mGotoEditFingerprintClick:Z

.field public mGotoEnrollClick:Z

.field public mGotoFaceUnlockClick:Z

.field public mGotoQuickPayClick:Z

.field private mHasFingerprint:Z

.field private mIsAdmin:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLaunchedConfirm:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

.field private mPreferenceDividerLineFaceUnlock:Lcom/oneplus/settings/ui/OPPreferenceDivider;

.field private mProfileChallengeUserId:I

.field private mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mQuickPayPreference:Landroid/support/v7/preference/Preference;

.field private mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

.field private mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

.field private mShowPassword:Landroid/support/v14/preference/SwitchPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field private mToken:[B

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mUm:Landroid/os/UserManager;

.field private mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

.field private mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;

.field private preferenceDividerLineQuickPay:Lcom/oneplus/settings/ui/OPPreferenceDivider;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "managedPasswordProvider"    # Lcom/android/settings/ManagedLockPasswordProvider;
    .param p3, "userId"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/settings/SecuritySettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/SecuritySettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->launchConfirmDeviceLockForUnification()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/SecuritySettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->unifyUncompliantLocks()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/SecuritySettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateUnificationPreference()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    sput-object v0, Lcom/android/settings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 176
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 177
    const-string/jumbo v1, "show_password"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_install_applications"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "unification"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 178
    const-string/jumbo v1, "visiblepattern_profile"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 176
    sput-object v0, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 184
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    .line 1183
    new-instance v0, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;-><init>(Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;)V

    .line 1182
    sput-object v0, Lcom/android/settings/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 1985
    new-instance v0, Lcom/android/settings/SecuritySettings$1;

    invoke-direct {v0}, Lcom/android/settings/SecuritySettings$1;-><init>()V

    .line 1984
    sput-object v0, Lcom/android/settings/SecuritySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 119
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 239
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mHasFingerprint:Z

    .line 240
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mGotoEditFingerprintClick:Z

    .line 241
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mGotoEnrollClick:Z

    .line 242
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mGotoAppLockerClick:Z

    .line 243
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mGotoFaceUnlockClick:Z

    .line 244
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mGotoQuickPayClick:Z

    .line 246
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->isSupportFinger:Z

    .line 119
    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 8
    .param p1, "root"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    const/4 v7, 0x0

    .line 1657
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mFingerprint_list_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 1658
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v6, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v5, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    .line 1659
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1661
    .local v0, "fingerprintCount":I
    if-lez v0, :cond_0

    .line 1662
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/SecuritySettings;->mHasFingerprint:Z

    .line 1667
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1668
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 1669
    .local v2, "item":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v4, Lcom/android/settings/SecuritySettings$FingerprintPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/SecuritySettings$FingerprintPreference;-><init>(Landroid/content/Context;)V

    .line 1670
    .local v4, "pref":Lcom/android/settings/SecuritySettings$FingerprintPreference;
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    invoke-static {v5}, Lcom/android/settings/SecuritySettings;->genKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/SecuritySettings$FingerprintPreference;->setKey(Ljava/lang/String;)V

    .line 1671
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/SecuritySettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1672
    invoke-virtual {v4, v2}, Lcom/android/settings/SecuritySettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 1673
    invoke-virtual {v4, v7}, Lcom/android/settings/SecuritySettings$FingerprintPreference;->setPersistent(Z)V

    .line 1674
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mFingerprint_list_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1675
    invoke-virtual {v4, p0}, Lcom/android/settings/SecuritySettings$FingerprintPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1667
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1664
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/hardware/fingerprint/Fingerprint;
    .end local v4    # "pref":Lcom/android/settings/SecuritySettings$FingerprintPreference;
    :cond_0
    iput-boolean v7, p0, Lcom/android/settings/SecuritySettings;->mHasFingerprint:Z

    goto :goto_0

    .line 1683
    .restart local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateAddPreference()V

    .line 1685
    return-void
.end method

.method private addTrustAgentSettings(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 9
    .param p1, "securityCategory"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    .line 707
    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 709
    .local v2, "hasSecurity":Z
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v6, v7, v8}, Lcom/android/settings/SecuritySettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 710
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 711
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 713
    .local v0, "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v5, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 714
    .local v5, "trustAgentPreference":Lcom/android/settingslib/RestrictedPreference;
    const-string/jumbo v6, "trust_agent"

    invoke-virtual {v5, v6}, Lcom/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 715
    iget-object v6, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v6, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 718
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 719
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 720
    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    invoke-virtual {v5, v4}, Lcom/android/settingslib/RestrictedPreference;->setIntent(Landroid/content/Intent;)V

    .line 723
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 725
    iget-object v6, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 726
    invoke-virtual {v5}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v6

    if-nez v6, :cond_0

    xor-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_0

    .line 727
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 728
    const v6, 0x7f0f07ad

    invoke-virtual {v5, v6}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    .line 710
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 731
    .end local v0    # "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "trustAgentPreference":Lcom/android/settingslib/RestrictedPreference;
    :cond_1
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 32

    .prologue
    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v19

    .line 354
    .local v19, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v19, :cond_0

    .line 355
    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 357
    :cond_0
    const v27, 0x7f080088

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v19

    .line 361
    const v27, 0x7f08009c

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v28, v0

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    move-object/from16 v29, v0

    sget v30, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    .line 364
    invoke-static/range {v27 .. v30}, Lcom/android/settings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v18

    .line 366
    .local v18, "resid":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 369
    const-string/jumbo v27, "unlock_set_or_change"

    sget v28, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v27, v0

    sget v28, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-static/range {v27 .. v28}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v27, v0

    const/16 v28, -0x2710

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v27

    .line 372
    if-eqz v27, :cond_1

    .line 374
    const v27, 0x7f08009a

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 375
    const v27, 0x7f08009e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    move-object/from16 v29, v0

    .line 378
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v30, v0

    .line 376
    invoke-static/range {v27 .. v30}, Lcom/android/settings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v17

    .line 379
    .local v17, "profileResid":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 383
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->maybeAddFingerprintPreference(Landroid/support/v7/preference/PreferenceGroup;I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v27

    if-nez v27, :cond_7

    .line 387
    const-string/jumbo v27, "unlock_set_or_change_profile"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    .line 388
    .local v9, "lockPreference":Landroid/support/v7/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v27

    .line 389
    const v28, 0x7f0f0aed

    .line 388
    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 390
    .local v22, "summary":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 391
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 394
    const-string/jumbo v27, "unlock_set_or_change"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    .line 403
    .end local v9    # "lockPreference":Landroid/support/v7/preference/Preference;
    .end local v17    # "profileResid":I
    .end local v22    # "summary":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v27, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v26

    .line 404
    .local v26, "unlockSetOrChange":Landroid/support/v7/preference/Preference;
    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/settings/GearPreference;

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 405
    check-cast v26, Lcom/android/settings/GearPreference;

    .end local v26    # "unlockSetOrChange":Landroid/support/v7/preference/Preference;
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/GearPreference;->setOnGearClickListener(Lcom/android/settings/GearPreference$OnGearClickListener;)V

    .line 409
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SecuritySettings;->mIsAdmin:Z

    .line 413
    const-string/jumbo v27, "security_category"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    .line 412
    check-cast v20, Landroid/support/v7/preference/PreferenceGroup;

    .line 414
    .local v20, "securityCategory":Landroid/support/v7/preference/PreferenceGroup;
    if-eqz v20, :cond_3

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings;->addTrustAgentSettings(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 421
    :cond_3
    const-string/jumbo v27, "visiblepattern_profile"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/support/v14/preference/SwitchPreference;

    .line 420
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    .line 422
    const-string/jumbo v27, "unification"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    .line 424
    const v27, 0x7f080058

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 426
    const-string/jumbo v27, "key_fingerprint_list"

    .line 425
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mFingerprint_list_category:Landroid/support/v7/preference/PreferenceCategory;

    .line 427
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings;->addFingerprintItemPreferences(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 431
    const v27, 0x7f08008f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 433
    const-string/jumbo v27, "privacy_catagory_face_unlock"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 434
    const-string/jumbo v27, "oneplus_face_unlock"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mFaceUnlockPreference:Landroid/support/v7/preference/Preference;

    .line 435
    const-string/jumbo v27, "preference_divider_line_face_unlock"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mPreferenceDividerLineFaceUnlock:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    .line 436
    sget-object v27, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static/range {v27 .. v27}, Lcom/oneplus/settings/utils/OPUtils;->isSurportFaceUnlock(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v27

    xor-int/lit8 v27, v27, 0x1

    if-eqz v27, :cond_8

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPreferenceDividerLineFaceUnlock:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 445
    :goto_1
    const-string/jumbo v27, "privacy_catagory_quick_pay"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 446
    const-string/jumbo v27, "oneplus_quick_pay"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mQuickPayPreference:Landroid/support/v7/preference/Preference;

    .line 447
    sget-object v27, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static/range {v27 .. v27}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mQuickPayPreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v27, v0

    const v28, 0x7f0f0457

    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 452
    :goto_2
    const-string/jumbo v27, "preference_divider_line_quick_pay"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->preferenceDividerLineQuickPay:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_a

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->preferenceDividerLineQuickPay:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 462
    :goto_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v24

    .line 464
    .local v24, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    const-string/jumbo v28, "carrier_config"

    invoke-virtual/range {v27 .. v28}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 463
    check-cast v6, Landroid/telephony/CarrierConfigManager;

    .line 465
    .local v6, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v6}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v5

    .line 466
    .local v5, "b":Landroid/os/PersistableBundle;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsAdmin:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isSimIccReady()Z

    move-result v27

    xor-int/lit8 v27, v27, 0x1

    if-nez v27, :cond_4

    .line 467
    const-string/jumbo v27, "hide_sim_lock_settings_bool"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    .line 466
    if-eqz v27, :cond_b

    .line 468
    :cond_4
    const-string/jumbo v27, "sim_lock"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 470
    const-string/jumbo v27, "simlock_preference_divider_line"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 476
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 477
    const-string/jumbo v28, "lock_to_app_enabled"

    const/16 v29, 0x0

    .line 476
    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_5

    .line 478
    const-string/jumbo v27, "screen_pinning_settings"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0f0ff8

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 478
    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 482
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "op_navigation_bar_type"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 483
    const-string/jumbo v27, "screen_pinning_settings"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0f04e0

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 483
    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 485
    const-string/jumbo v27, "screen_pinning_settings"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 492
    :goto_5
    const-string/jumbo v27, "show_password"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/support/v14/preference/SwitchPreference;

    .line 493
    const-string/jumbo v27, "credentials_reset"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/android/settingslib/RestrictedPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    const-string/jumbo v28, "user"

    invoke-virtual/range {v27 .. v28}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/UserManager;

    .line 497
    .local v25, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 564
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    sget-object v27, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_d

    .line 565
    sget-object v27, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v27, v27, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    .line 566
    .local v12, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 564
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 398
    .end local v5    # "b":Landroid/os/PersistableBundle;
    .end local v6    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .end local v8    # "i":I
    .end local v12    # "pref":Landroid/support/v7/preference/Preference;
    .end local v20    # "securityCategory":Landroid/support/v7/preference/PreferenceGroup;
    .end local v24    # "tm":Landroid/telephony/TelephonyManager;
    .end local v25    # "um":Landroid/os/UserManager;
    .restart local v17    # "profileResid":I
    :cond_7
    const-string/jumbo v27, "unlock_set_or_change_profile"

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v28, v0

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 440
    .end local v17    # "profileResid":I
    .restart local v20    # "securityCategory":Landroid/support/v7/preference/PreferenceGroup;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPreferenceDividerLineFaceUnlock:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    .line 450
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mQuickPayPreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v27, v0

    const v28, 0x7f0f03ec

    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    .line 457
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->preferenceDividerLineQuickPay:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_3

    .line 474
    .restart local v5    # "b":Landroid/os/PersistableBundle;
    .restart local v6    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .restart local v24    # "tm":Landroid/telephony/TelephonyManager;
    :cond_b
    const-string/jumbo v27, "sim_lock"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isSimReady()Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 487
    :cond_c
    const-string/jumbo v27, "screen_pinning_settings"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 571
    .restart local v8    # "i":I
    .restart local v25    # "um":Landroid/os/UserManager;
    :cond_d
    const-string/jumbo v27, "device_admin_category"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    .line 570
    check-cast v7, Landroid/support/v7/preference/PreferenceGroup;

    .line 573
    .local v7, "deviceAdminCategory":Landroid/support/v7/preference/PreferenceGroup;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/SecuritySettings;->updateEnterprisePreference(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 576
    const-string/jumbo v27, "toggle_install_applications"

    .line 575
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v27, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v27, v0

    sget v28, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v28

    xor-int/lit8 v28, v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    .line 582
    const-string/jumbo v28, "no_install_unknown_sources"

    sget v29, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    .line 581
    invoke-static/range {v27 .. v29}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v27

    if-nez v27, :cond_e

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    .line 584
    const-string/jumbo v28, "no_install_apps"

    sget v29, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    .line 583
    invoke-static/range {v27 .. v29}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v27

    .line 581
    if-eqz v27, :cond_f

    .line 585
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 587
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isEnabled()Z

    move-result v27

    if-eqz v27, :cond_10

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v27, v0

    .line 589
    const-string/jumbo v28, "no_install_unknown_sources"

    .line 588
    invoke-virtual/range {v27 .. v28}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v27

    if-nez v27, :cond_10

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v27, v0

    .line 592
    const-string/jumbo v28, "no_install_apps"

    .line 591
    invoke-virtual/range {v27 .. v28}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 598
    :cond_10
    const-string/jumbo v27, "advanced_security"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceGroup;

    .line 599
    .local v4, "advancedCategory":Landroid/support/v7/preference/PreferenceGroup;
    if-eqz v4, :cond_11

    .line 600
    const-string/jumbo v27, "manage_trust_agents"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    .line 601
    .local v10, "manageAgents":Landroid/support/v7/preference/Preference;
    if-eqz v10, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v27, v0

    sget v28, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v27

    xor-int/lit8 v27, v27, 0x1

    if-eqz v27, :cond_11

    .line 602
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 603
    const v27, 0x7f0f07ad

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 610
    .end local v10    # "manageAgents":Landroid/support/v7/preference/Preference;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v27

    .line 611
    const-class v28, Lcom/android/settings/SecuritySettings;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    const/16 v30, 0x1

    .line 610
    invoke-virtual/range {v27 .. v30}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 613
    const/4 v8, 0x0

    :goto_7
    sget-object v27, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_13

    .line 614
    sget-object v27, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v27, v27, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    .line 615
    .restart local v12    # "pref":Landroid/support/v7/preference/Preference;
    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 613
    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 618
    .end local v12    # "pref":Landroid/support/v7/preference/Preference;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsAdmin:Z

    move/from16 v27, v0

    if-eqz v27, :cond_14

    .line 619
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v27

    if-eqz v27, :cond_18

    .line 621
    const v27, 0x7f08008a

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 627
    :cond_14
    :goto_8
    const-string/jumbo v27, "privacy_catagory"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/support/v7/preference/PreferenceCategory;

    .line 628
    .local v16, "privacyCatagory":Landroid/support/v7/preference/PreferenceCategory;
    const-string/jumbo v27, "preference_divider_line_applocker"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    .line 630
    .local v15, "preferenceDividerLineAppLocker":Lcom/oneplus/settings/ui/OPPreferenceDivider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_15

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 634
    :cond_15
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v27

    if-eqz v27, :cond_17

    .line 635
    if-eqz v16, :cond_16

    .line 636
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 637
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 640
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v27, v0

    if-eqz v27, :cond_17

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->preferenceDividerLineQuickPay:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 649
    :cond_17
    const-string/jumbo v27, "security_status"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/support/v7/preference/PreferenceGroup;

    .line 650
    .local v21, "securityStatusPreferenceGroup":Landroid/support/v7/preference/PreferenceGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-object/from16 v27, v0

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getMetricsCategory()I

    move-result v30

    const-string/jumbo v31, "com.android.settings.category.ia.security"

    .line 650
    invoke-interface/range {v27 .. v31}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getPreferencesForCategory(Landroid/app/Activity;Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v23

    .line 653
    .local v23, "tilePrefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    const/4 v11, 0x0

    .line 654
    .local v11, "numSecurityStatusPrefs":I
    if-eqz v23, :cond_1a

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v27

    xor-int/lit8 v27, v27, 0x1

    if-eqz v27, :cond_1a

    .line 655
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "preference$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/Preference;

    .line 656
    .local v13, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v13}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_19

    .line 657
    invoke-virtual {v13}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "security_status_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    .line 656
    if-eqz v27, :cond_19

    .line 660
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 661
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 624
    .end local v11    # "numSecurityStatusPrefs":I
    .end local v13    # "preference":Landroid/support/v7/preference/Preference;
    .end local v14    # "preference$iterator":Ljava/util/Iterator;
    .end local v15    # "preferenceDividerLineAppLocker":Lcom/oneplus/settings/ui/OPPreferenceDivider;
    .end local v16    # "privacyCatagory":Landroid/support/v7/preference/PreferenceCategory;
    .end local v21    # "securityStatusPreferenceGroup":Landroid/support/v7/preference/PreferenceGroup;
    .end local v23    # "tilePrefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    :cond_18
    const v27, 0x7f08009d

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_8

    .line 664
    .restart local v11    # "numSecurityStatusPrefs":I
    .restart local v13    # "preference":Landroid/support/v7/preference/Preference;
    .restart local v14    # "preference$iterator":Ljava/util/Iterator;
    .restart local v15    # "preferenceDividerLineAppLocker":Lcom/oneplus/settings/ui/OPPreferenceDivider;
    .restart local v16    # "privacyCatagory":Landroid/support/v7/preference/PreferenceCategory;
    .restart local v21    # "securityStatusPreferenceGroup":Landroid/support/v7/preference/PreferenceGroup;
    .restart local v23    # "tilePrefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    :cond_19
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_9

    .line 669
    .end local v13    # "preference":Landroid/support/v7/preference/Preference;
    .end local v14    # "preference$iterator":Ljava/util/Iterator;
    :cond_1a
    if-nez v11, :cond_1c

    .line 670
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 679
    :cond_1b
    :goto_a
    return-object v19

    .line 671
    :cond_1c
    if-lez v11, :cond_1b

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v28

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-object/from16 v29, v0

    .line 676
    const-string/jumbo v30, "com.android.settings.category.ia.security"

    .line 675
    invoke-interface/range {v29 .. v30}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v29

    .line 674
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lcom/android/settings/security/SecurityFeatureProvider;->updatePreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V

    goto :goto_a
.end method

.method private disableIfPasswordQualityManaged(Ljava/lang/String;I)V
    .locals 4
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 687
    invoke-static {v2, p2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 689
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v2

    .line 690
    const/high16 v3, 0x80000

    .line 689
    if-ne v2, v3, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedPreference;

    .line 693
    .local v1, "pref":Lcom/android/settingslib/RestrictedPreference;
    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 695
    .end local v1    # "pref":Lcom/android/settingslib/RestrictedPreference;
    :cond_0
    return-void
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 772
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 773
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v8, Lcom/android/settings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 775
    const/16 v9, 0x80

    .line 774
    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 776
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v8, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v8}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v1

    .line 779
    .local v1, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/16 v9, 0x10

    .line 778
    invoke-static {p0, v9, v8}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 781
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    .line 782
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 783
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 784
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v8, :cond_1

    .line 782
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 785
    :cond_1
    invoke-static {v4, v3}, Lcom/android/settings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 787
    invoke-static {v3, v4}, Lcom/android/settings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v7

    .line 788
    .local v7, "trustAgentComponentInfo":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v8, v7, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_0

    .line 790
    invoke-static {v4}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    .line 789
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 788
    if-nez v8, :cond_0

    .line 791
    iget-object v8, v7, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 788
    if-nez v8, :cond_0

    .line 792
    if-eqz v0, :cond_2

    .line 793
    invoke-static {v4}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    .line 792
    invoke-virtual {p2, v10, v8}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_2

    .line 794
    iput-object v0, v7, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 796
    :cond_2
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    .end local v2    # "i":I
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "trustAgentComponentInfo":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_3
    return-object v6
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "managedPasswordProvider"    # Lcom/android/settings/ManagedLockPasswordProvider;
    .param p3, "userId"    # I

    .prologue
    .line 311
    sget v2, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    if-ne p3, v2, :cond_0

    const/4 v0, 0x1

    .line 312
    .local v0, "isMyUser":Z
    :goto_0
    const/4 v1, 0x0

    .line 313
    .local v1, "resid":I
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 314
    if-nez v0, :cond_1

    .line 315
    const v1, 0x7f08008e

    .line 343
    :goto_1
    return v1

    .line 311
    .end local v0    # "isMyUser":Z
    .end local v1    # "resid":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isMyUser":Z
    goto :goto_0

    .line 316
    .restart local v1    # "resid":I
    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    const v1, 0x7f08008d

    goto :goto_1

    .line 319
    :cond_2
    const v1, 0x7f080089

    goto :goto_1

    .line 322
    :cond_3
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 324
    :sswitch_0
    if-eqz v0, :cond_4

    const v1, 0x7f080093

    goto :goto_1

    .line 325
    :cond_4
    const v1, 0x7f080094

    goto :goto_1

    .line 329
    :sswitch_1
    if-eqz v0, :cond_5

    const v1, 0x7f080097

    goto :goto_1

    .line 330
    :cond_5
    const v1, 0x7f080098

    goto :goto_1

    .line 335
    :sswitch_2
    if-eqz v0, :cond_6

    const v1, 0x7f080090

    goto :goto_1

    .line 336
    :cond_6
    const v1, 0x7f080091

    goto :goto_1

    .line 339
    :sswitch_3
    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2}, Lcom/android/settings/ManagedLockPasswordProvider;->getResIdForLockUnlockScreen(Z)I

    move-result v1

    goto :goto_1

    .line 322
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x80000 -> :sswitch_3
    .end sparse-switch
.end method

.method private gotoFindSensor([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 1747
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1748
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    .line 1749
    const-class v2, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1748
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1750
    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1751
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    sget v2, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1752
    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1753
    return-void
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 804
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 805
    const-string/jumbo v2, "install_non_market_apps"

    .line 804
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSimIccReady()Z
    .locals 5

    .prologue
    .line 736
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 738
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 740
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 741
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 742
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 743
    const/4 v4, 0x1

    return v4

    .line 748
    .end local v0    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v1    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private isSimReady()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 755
    const/4 v0, 0x0

    .line 757
    .local v0, "simState":I
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 758
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 759
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 760
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 761
    if-eq v0, v7, :cond_0

    .line 762
    if-eqz v0, :cond_0

    .line 763
    return v7

    .line 767
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    return v6
.end method

.method private launchChooseOrConfirmLock(I)V
    .locals 9
    .param p1, "requestCode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 1772
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1774
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1776
    .local v1, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const v2, 0x7f0f047a

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1777
    iget-wide v6, p0, Lcom/android/settings/SecuritySettings;->mChallenge:J

    move v2, p1

    move-object v5, v4

    .line 1775
    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1778
    const-string/jumbo v2, "com.android.settings"

    const-class v3, Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1779
    const-string/jumbo v2, "minimum_quality"

    .line 1780
    const/high16 v3, 0x10000

    .line 1779
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1781
    const-string/jumbo v2, "hide_disabled_prefs"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1783
    const-string/jumbo v2, "has_challenge"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1784
    const-string/jumbo v2, "challenge"

    iget-wide v4, p0, Lcom/android/settings/SecuritySettings;->mChallenge:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1785
    const/16 v2, 0x66

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1787
    :cond_0
    return-void
.end method

.method private launchConfirmDeviceLockForUnification()V
    .locals 5

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1064
    const v3, 0x7f0f075c

    .line 1063
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1066
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1068
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    sget v2, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    const/16 v3, 0x80

    const/4 v4, 0x1

    .line 1067
    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1069
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->launchConfirmProfileLockForUnification()V

    .line 1071
    :cond_0
    return-void
.end method

.method private launchConfirmProfileLockForUnification()V
    .locals 5

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1075
    const v3, 0x7f0f075d

    .line 1074
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1077
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1079
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    iget v2, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    const/16 v3, 0x81

    const/4 v4, 0x1

    .line 1078
    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1080
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->unifyLocks()V

    .line 1081
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 1083
    :cond_0
    return-void
.end method

.method private maybeAddFingerprintPreference(Landroid/support/v7/preference/PreferenceGroup;I)V
    .locals 2
    .param p1, "securityCategory"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "userId"    # I

    .prologue
    .line 700
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 699
    invoke-static {v1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintPreferenceForUser(Landroid/content/Context;I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 701
    .local v0, "fingerprintPreference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 704
    :cond_0
    return-void
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 810
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    return-void

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "install_non_market_apps"

    .line 815
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 814
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 816
    return-void

    .line 815
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unifyLocks()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1087
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 1088
    .local v1, "profileQuality":I
    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    .line 1089
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1090
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1091
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    sget v5, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    .line 1089
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 1097
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 1098
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 1097
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 1100
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    .line 1101
    .local v0, "profilePatternVisibility":Z
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 1102
    iput-object v6, p0, Lcom/android/settings/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 1103
    iput-object v6, p0, Lcom/android/settings/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 1104
    return-void

    .line 1093
    .end local v0    # "profilePatternVisibility":Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1094
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 1095
    sget v5, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    .line 1093
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private unifyUncompliantLocks()V
    .locals 6

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 1108
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 1107
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 1109
    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 1110
    const v3, 0x7f0f0756

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 1109
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 1111
    return-void
.end method

.method private ununifyLocks()V
    .locals 6

    .prologue
    .line 1114
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1115
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1117
    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 1118
    const v3, 0x7f0f0757

    .line 1119
    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    .line 1116
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 1120
    return-void
.end method

.method private updateAddPreference()V
    .locals 8

    .prologue
    .line 1689
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1690
    const v5, 0x10e0043

    .line 1689
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1691
    .local v1, "max":I
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v5, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v1, :cond_0

    const/4 v3, 0x1

    .line 1692
    .local v3, "tooMany":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 1693
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f0f0736

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1694
    .local v2, "maxSummary":Ljava/lang/CharSequence;
    :goto_1
    const-string/jumbo v4, "key_fingerprint_add"

    invoke-virtual {p0, v4}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1695
    .local v0, "addPreference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1696
    xor-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1697
    return-void

    .line 1691
    .end local v0    # "addPreference":Landroid/support/v7/preference/Preference;
    .end local v2    # "maxSummary":Ljava/lang/CharSequence;
    .end local v3    # "tooMany":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "tooMany":Z
    goto :goto_0

    .line 1693
    :cond_1
    const-string/jumbo v2, ""

    .restart local v2    # "maxSummary":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method private updateUnificationPreference()V
    .locals 3

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 912
    iget v2, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 911
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 914
    :cond_0
    return-void
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 820
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 821
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0a32

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 820
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 822
    const v1, 0x1080027

    .line 820
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 823
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0af7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 820
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 824
    const v1, 0x1040013

    .line 820
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 825
    const v1, 0x1040009

    .line 820
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 827
    return-void
.end method


# virtual methods
.method public checkIfNeedPassword()Z
    .locals 3

    .prologue
    .line 1700
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1701
    sget v2, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    .line 1700
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1702
    .local v0, "passwordQuality":I
    sparse-switch v0, :sswitch_data_0

    .line 1711
    const/4 v1, 0x0

    return v1

    .line 1709
    :sswitch_0
    const/4 v1, 0x1

    return v1

    .line 1702
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1176
    const v0, 0x7f0f0ec4

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 260
    const/16 v0, 0x57

    return v0
.end method

.method public gotoAppLockerPage()V
    .locals 6

    .prologue
    .line 1757
    const/4 v1, 0x0

    .line 1759
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1760
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    const-string/jumbo v3, "com.android.settings"

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings.Settings$OPAppLockerActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1761
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 1765
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1762
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1763
    .end local v1    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string/jumbo v3, "SecuritySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1762
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public gotoEnrollFingerprint([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 1737
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1738
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    .line 1739
    const-class v2, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1738
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1740
    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1741
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    sget v2, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1742
    const-string/jumbo v1, "show_actionbar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1743
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1744
    return-void
.end method

.method public gotoFingerprintEditPage(Landroid/support/v7/preference/Preference;)V
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 1717
    if-nez p1, :cond_0

    .line 1718
    return-void

    :cond_0
    move-object v7, p1

    .line 1720
    check-cast v7, Lcom/android/settings/SecuritySettings$FingerprintPreference;

    .line 1721
    .local v7, "fpref":Lcom/android/settings/SecuritySettings$FingerprintPreference;
    invoke-virtual {v7}, Lcom/android/settings/SecuritySettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v6

    .line 1722
    .local v6, "fp":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1723
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "fingerprint_parcelable"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1725
    const-string/jumbo v2, "com.oneplus.settings.opfinger.OPFingerPrintEditFragments"

    .line 1726
    const v3, 0x7f0f022d

    .line 1727
    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    .line 1724
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 1728
    return-void
.end method

.method public gotoFingerprintEnrollIntroduction()V
    .locals 3

    .prologue
    .line 1731
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1732
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    const-class v2, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1733
    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1734
    return-void
.end method

.method public isEnterpriseFeatureAvailable()Z
    .locals 2

    .prologue
    .line 1811
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mEnterpriseFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1813
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mEnterpriseFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v1}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->hasDeviceOwner()Z

    move-result v0

    .line 1814
    .local v0, "available":Z
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x66

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 985
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 986
    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings;->mGotoEnrollClick:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings;->mGotoQuickPayClick:Z

    if-eqz v2, :cond_5

    .line 987
    :cond_0
    if-eq p1, v7, :cond_1

    const/16 v2, 0x65

    if-ne p1, v2, :cond_13

    .line 988
    :cond_1
    :goto_0
    if-eq p2, v6, :cond_2

    if-ne p2, v4, :cond_4

    .line 990
    :cond_2
    if-eqz p3, :cond_3

    .line 991
    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mToken:[B

    .line 993
    :cond_3
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mToken:[B

    if-eqz v2, :cond_4

    .line 994
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v3, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    .line 995
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 996
    .local v0, "fingerprintCount":I
    if-lez v0, :cond_15

    .line 997
    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings;->mGotoQuickPayClick:Z

    if-eqz v2, :cond_14

    .line 998
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoQuickPaySettingsPage(Landroid/content/Context;)V

    .line 1008
    .end local v0    # "fingerprintCount":I
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_4
    :goto_1
    iput-boolean v5, p0, Lcom/android/settings/SecuritySettings;->mGotoQuickPayClick:Z

    .line 1009
    iput-boolean v5, p0, Lcom/android/settings/SecuritySettings;->mGotoEnrollClick:Z

    .line 1012
    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings;->mGotoEditFingerprintClick:Z

    if-eqz v2, :cond_9

    .line 1013
    if-eq p1, v7, :cond_6

    const/16 v2, 0x69

    if-ne p1, v2, :cond_8

    .line 1014
    :cond_6
    if-eq p2, v6, :cond_7

    if-ne p2, v4, :cond_8

    .line 1015
    :cond_7
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mFingerprintEditPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->gotoFingerprintEditPage(Landroid/support/v7/preference/Preference;)V

    .line 1017
    :cond_8
    iput-boolean v5, p0, Lcom/android/settings/SecuritySettings;->mGotoEditFingerprintClick:Z

    .line 1020
    :cond_9
    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings;->mGotoAppLockerClick:Z

    if-eqz v2, :cond_d

    .line 1021
    if-eq p1, v7, :cond_a

    const/16 v2, 0x68

    if-ne p1, v2, :cond_c

    .line 1022
    :cond_a
    if-eq p2, v6, :cond_b

    if-ne p2, v4, :cond_c

    .line 1023
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->gotoAppLockerPage()V

    .line 1025
    :cond_c
    iput-boolean v5, p0, Lcom/android/settings/SecuritySettings;->mGotoAppLockerClick:Z

    .line 1028
    :cond_d
    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings;->mGotoFaceUnlockClick:Z

    if-eqz v2, :cond_11

    .line 1029
    if-eq p1, v7, :cond_e

    const/16 v2, 0x6b

    if-ne p1, v2, :cond_10

    .line 1030
    :cond_e
    if-eq p2, v6, :cond_f

    if-ne p2, v4, :cond_10

    .line 1031
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->gotoFaceUnlockSettings(Landroid/content/Context;)V

    .line 1033
    :cond_10
    iput-boolean v5, p0, Lcom/android/settings/SecuritySettings;->mGotoFaceUnlockClick:Z

    .line 1036
    :cond_11
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_16

    if-ne p2, v4, :cond_16

    .line 1037
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v2, :cond_12

    .line 1038
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1039
    iput-object v8, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 1041
    :cond_12
    return-void

    .line 987
    :cond_13
    const/16 v2, 0x6a

    if-ne p1, v2, :cond_4

    goto/16 :goto_0

    .line 1000
    .restart local v0    # "fingerprintCount":I
    .restart local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_14
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mToken:[B

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->gotoEnrollFingerprint([B)V

    goto :goto_1

    .line 1003
    :cond_15
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mToken:[B

    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings;->gotoFindSensor([B)V

    goto :goto_1

    .line 1042
    .end local v0    # "fingerprintCount":I
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_16
    const/16 v2, 0x80

    if-ne p1, v2, :cond_17

    .line 1043
    if-ne p2, v4, :cond_17

    .line 1045
    const-string/jumbo v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1044
    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 1046
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->launchConfirmProfileLockForUnification()V

    .line 1047
    return-void

    .line 1048
    :cond_17
    const/16 v2, 0x81

    if-ne p1, v2, :cond_18

    .line 1049
    if-ne p2, v4, :cond_18

    .line 1051
    const-string/jumbo v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1050
    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 1052
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->unifyLocks()V

    .line 1053
    return-void

    .line 1054
    :cond_18
    const/16 v2, 0x82

    if-ne p1, v2, :cond_19

    .line 1055
    if-ne p2, v4, :cond_19

    .line 1056
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ununifyLocks()V

    .line 1057
    return-void

    .line 1059
    :cond_19
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 1060
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, -0x1

    .line 831
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_1

    .line 832
    if-ne p2, v3, :cond_2

    const/4 v0, 0x1

    .line 833
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 834
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v1, :cond_0

    .line 835
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 838
    :cond_0
    const-string/jumbo v1, "android.settings.SECURITY_SETTINGS"

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 840
    if-eqz v0, :cond_3

    .line 841
    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings;->setResult(I)V

    .line 846
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->finish()V

    .line 850
    .end local v0    # "turnOn":Z
    :cond_1
    return-void

    .line 832
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "turnOn":Z
    goto :goto_0

    .line 843
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->setResult(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 267
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 269
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-static {v1, v2}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    .line 273
    const-string/jumbo v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mUm:Landroid/os/UserManager;

    .line 277
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 279
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 281
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    .line 284
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mEnterpriseFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 290
    const-string/jumbo v2, "fingerprint"

    .line 289
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 291
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings;->isSupportFinger:Z

    .line 294
    if-eqz p1, :cond_0

    .line 295
    const-string/jumbo v1, "trust_agent_click_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 294
    if-eqz v1, :cond_0

    .line 296
    const-string/jumbo v1, "trust_agent_click_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 299
    :cond_0
    if-eqz p1, :cond_1

    .line 300
    const-string/jumbo v1, "GotoEnrollClick"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mGotoEnrollClick:Z

    .line 301
    const-string/jumbo v1, "GotoAppLockerClick"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mGotoAppLockerClick:Z

    .line 302
    const-string/jumbo v1, "GotoFaceunlockClick"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mGotoFaceUnlockClick:Z

    .line 303
    const-string/jumbo v1, "GotoQuickPayClick"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mGotoQuickPayClick:Z

    .line 306
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 861
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 862
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 865
    :cond_0
    return-void
.end method

.method public onGearClick(Lcom/android/settings/GearPreference;)V
    .locals 6
    .param p1, "p"    # Lcom/android/settings/GearPreference;

    .prologue
    const/4 v3, 0x0

    .line 854
    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {p1}, Lcom/android/settings/GearPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    const-class v0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 857
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1124
    const/4 v5, 0x1

    .line 1125
    .local v5, "result":Z
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 1126
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    .line 1127
    .local v4, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string/jumbo v7, "visiblepattern_profile"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1128
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mUm:Landroid/os/UserManager;

    .line 1129
    iget v10, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 1128
    invoke-static {v7, v8, v10}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1130
    return v9

    .line 1132
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget v8, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v4, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 1171
    :cond_1
    :goto_0
    return v5

    .line 1133
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v7, "unification"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1134
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mUm:Landroid/os/UserManager;

    .line 1135
    iget v11, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 1134
    invoke-static {v7, v10, v11}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1136
    return v9

    .line 1138
    :cond_3
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1140
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v7

    .line 1141
    const/high16 v8, 0x10000

    .line 1140
    if-lt v7, v8, :cond_4

    .line 1142
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1143
    iget v8, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 1142
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result v0

    .line 1145
    :goto_1
    invoke-static {v0}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;->newIntance(Z)Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;

    move-result-object v1

    .line 1146
    .local v1, "dialog":Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string/jumbo v8, "unification_dialog"

    invoke-virtual {v1, v7, v8}, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1140
    .end local v1    # "dialog":Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;
    :cond_4
    const/4 v0, 0x0

    .local v0, "compliantForDevice":Z
    goto :goto_1

    .line 1148
    .end local v0    # "compliantForDevice":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 1149
    const v9, 0x7f0f075c

    .line 1148
    invoke-virtual {v7, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1151
    .local v6, "title":Ljava/lang/String;
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1153
    .local v2, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    sget v7, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    const/16 v9, 0x82

    .line 1152
    invoke-virtual {v2, v9, v6, v8, v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1154
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ununifyLocks()V

    goto :goto_0

    .line 1157
    .end local v2    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    .end local v6    # "title":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    const-string/jumbo v7, "show_password"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1158
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "show_password"

    move-object v7, p2

    .line 1159
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    .line 1158
    :goto_2
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1160
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget v8, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v4, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    goto/16 :goto_0

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    move v7, v9

    .line 1159
    goto :goto_2

    .line 1161
    :cond_8
    const-string/jumbo v7, "toggle_install_applications"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1162
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1163
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v7, v9}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 1164
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->warnAppInstallation()V

    .line 1166
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1168
    :cond_9
    invoke-direct {p0, v9}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 918
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 919
    .local v8, "key":Ljava/lang/String;
    const-string/jumbo v0, "oneplus_app_locker"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 920
    iput-boolean v9, p0, Lcom/android/settings/SecuritySettings;->mGotoAppLockerClick:Z

    .line 921
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->launchChooseOrConfirmLock(I)V

    .line 977
    :cond_0
    :goto_0
    return v9

    .line 922
    :cond_1
    const-string/jumbo v0, "oneplus_face_unlock"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    iput-boolean v9, p0, Lcom/android/settings/SecuritySettings;->mGotoFaceUnlockClick:Z

    .line 924
    const/16 v0, 0x6b

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->launchChooseOrConfirmLock(I)V

    goto :goto_0

    .line 925
    :cond_2
    const-string/jumbo v0, "oneplus_quick_pay"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 935
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoQuickPaySettingsPage(Landroid/content/Context;)V

    goto :goto_0

    .line 936
    :cond_3
    const-string/jumbo v0, "key_fingerprint_add"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 937
    iput-boolean v9, p0, Lcom/android/settings/SecuritySettings;->mGotoEnrollClick:Z

    .line 938
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/SecuritySettings;->mChallenge:J

    .line 939
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->checkIfNeedPassword()Z

    move-result v0

    if-nez v0, :cond_4

    .line 940
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->gotoFingerprintEnrollIntroduction()V

    goto :goto_0

    .line 943
    :cond_4
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->launchChooseOrConfirmLock(I)V

    goto :goto_0

    .line 945
    :cond_5
    instance-of v0, p1, Lcom/android/settings/SecuritySettings$FingerprintPreference;

    if-eqz v0, :cond_6

    .line 946
    iput-boolean v9, p0, Lcom/android/settings/SecuritySettings;->mGotoEditFingerprintClick:Z

    .line 947
    iput-object p1, p0, Lcom/android/settings/SecuritySettings;->mFingerprintEditPreference:Landroid/support/v7/preference/Preference;

    .line 948
    const/16 v0, 0x69

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->launchChooseOrConfirmLock(I)V

    goto :goto_0

    .line 949
    :cond_6
    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 950
    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 951
    const v3, 0x7f0f0756

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    .line 950
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 952
    :cond_7
    const-string/jumbo v0, "unlock_set_or_change_profile"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 953
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mUm:Landroid/os/UserManager;

    .line 954
    iget v2, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 953
    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 955
    const/4 v0, 0x0

    return v0

    .line 957
    :cond_8
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 958
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 959
    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 960
    const v3, 0x7f0f0757

    .line 961
    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    .line 959
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 962
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_9
    const-string/jumbo v0, "trust_agent"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 964
    new-instance v7, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 965
    .local v7, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 967
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x7e

    .line 966
    invoke-virtual {v7, v1, v0}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v6

    .line 968
    .local v6, "confirmationLaunched":Z
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 971
    iput-object v5, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 975
    .end local v6    # "confirmationLaunched":Z
    .end local v7    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_a
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 883
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 886
    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mGotoEditFingerprintClick:Z

    .line 887
    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mGotoEnrollClick:Z

    .line 888
    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mGotoAppLockerClick:Z

    .line 889
    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mGotoQuickPayClick:Z

    .line 890
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 892
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 893
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 894
    iget v4, p0, Lcom/android/settings/SecuritySettings;->mProfileChallengeUserId:I

    .line 893
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 897
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateUnificationPreference()V

    .line 899
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 900
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 901
    const-string/jumbo v4, "show_password"

    .line 900
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 905
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 907
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 900
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 869
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 870
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 871
    const-string/jumbo v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 874
    :cond_0
    const-string/jumbo v0, "GotoEnrollClick"

    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mGotoEnrollClick:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 875
    const-string/jumbo v0, "GotoAppLockerClick"

    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mGotoAppLockerClick:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 876
    const-string/jumbo v0, "GotoFaceunlockClick"

    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mGotoFaceUnlockClick:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 877
    const-string/jumbo v0, "GotoQuickPayClick"

    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mGotoQuickPayClick:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 879
    return-void
.end method

.method public updateEnterprisePreference(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 5
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    .line 1791
    if-nez p1, :cond_0

    return-void

    .line 1793
    :cond_0
    const-string/jumbo v2, "enterprise_privacy"

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 1794
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    if-nez v1, :cond_1

    return-void

    .line 1796
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->isEnterpriseFeatureAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1797
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 1798
    return-void

    .line 1801
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mEnterpriseFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v2}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getDeviceOwnerOrganizationName()Ljava/lang/String;

    move-result-object v0

    .line 1802
    .local v0, "organizationName":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 1803
    const v2, 0x7f0f1279

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 1808
    :goto_0
    return-void

    .line 1805
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 1806
    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v4, 0x7f0f127a

    .line 1805
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
