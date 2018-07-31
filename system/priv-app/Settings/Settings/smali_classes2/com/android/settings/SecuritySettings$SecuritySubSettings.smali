.class public Lcom/android/settings/SecuritySettings$SecuritySubSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecuritySubSettings"
.end annotation


# static fields
.field private static final KEY_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_after_timeout"

.field private static final KEY_OWNER_INFO_SETTINGS:Ljava/lang/String; = "owner_info_settings"

.field private static final KEY_POWER_INSTANTLY_LOCKS:Ljava/lang/String; = "power_button_instantly_locks"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;


# instance fields
.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mLockAfter:Lcom/android/settings/TimeoutListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

.field private mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

.field private mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "managedPasswordProvider"    # Lcom/android/settings/ManagedLockPasswordProvider;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getResIdForLockUnlockSubScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1391
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "lock_after_timeout"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1392
    const-string/jumbo v1, "visiblepattern"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "power_button_instantly_locks"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1391
    sput-object v0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 1382
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1382
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1477
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 1478
    .local v4, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v4, :cond_0

    .line 1479
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 1481
    :cond_0
    const/4 v4, 0x0

    .line 1483
    .local v4, "root":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1484
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1485
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v8

    .line 1483
    invoke-static {v6, v7, v8}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getResIdForLockUnlockSubScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I

    move-result v3

    .line 1486
    .local v3, "resid":I
    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->addPreferencesFromResource(I)V

    .line 1489
    const-string/jumbo v6, "lock_after_timeout"

    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/TimeoutListPreference;

    iput-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    .line 1490
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    if-eqz v6, :cond_1

    .line 1491
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->setupLockAfterPreference()V

    .line 1492
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->updateLockAfterPreferenceSummary()V

    .line 1496
    :cond_1
    const-string/jumbo v6, "visiblepattern"

    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;

    .line 1500
    const-string/jumbo v6, "power_button_instantly_locks"

    .line 1499
    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    .line 1501
    const-string/jumbo v6, "trust_agent"

    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 1502
    .local v5, "trustAgentPreference":Landroid/support/v7/preference/Preference;
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v6, :cond_2

    .line 1503
    if-eqz v5, :cond_2

    .line 1504
    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1505
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 1507
    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v11

    .line 1506
    const v8, 0x7f0f0ade

    .line 1505
    invoke-virtual {p0, v8, v7}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1510
    :cond_2
    const-string/jumbo v6, "owner_info_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/RestrictedPreference;

    iput-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    .line 1511
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v6, :cond_3

    .line 1512
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1513
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 1514
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v6, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1531
    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v6, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_6

    .line 1532
    sget-object v6, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 1533
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v2, :cond_4

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1531
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1516
    .end local v1    # "i":I
    .end local v2    # "pref":Landroid/support/v7/preference/Preference;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v6, v10}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1517
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object v7, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1518
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v6}, Lcom/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1519
    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    .line 1520
    new-instance v7, Lcom/android/settings/SecuritySettings$SecuritySubSettings$1;

    invoke-direct {v7, p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings$1;-><init>(Lcom/android/settings/SecuritySettings$SecuritySubSettings;)V

    .line 1519
    invoke-virtual {v6, v7}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 1535
    .restart local v1    # "i":I
    :cond_6
    return-void
.end method

.method private static getResIdForLockUnlockSubScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "managedPasswordProvider"    # Lcom/android/settings/ManagedLockPasswordProvider;

    .prologue
    .line 1608
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1609
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1625
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1611
    :sswitch_0
    const v0, 0x7f080095

    return v0

    .line 1614
    :sswitch_1
    const v0, 0x7f080099

    return v0

    .line 1618
    :sswitch_2
    const v0, 0x7f080092

    return v0

    .line 1620
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/settings/ManagedLockPasswordProvider;->getResIdForLockUnlockSubScreen()I

    move-result v0

    return v0

    .line 1622
    :cond_1
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1623
    const v0, 0x7f08009b

    return v0

    .line 1609
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

.method private setupLockAfterPreference()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 1539
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1540
    const-string/jumbo v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    .line 1539
    invoke-static {v1, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1541
    .local v4, "currentTimeout":J
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 1542
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1543
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1545
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1544
    invoke-static {v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 1546
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 1547
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 1546
    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v2

    .line 1549
    .local v2, "adminTimeout":J
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v10, "screen_off_timeout"

    invoke-static {v1, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1548
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v6, v1

    .line 1553
    .local v6, "displayTimeout":J
    const-wide/16 v10, 0x0

    sub-long v12, v2, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1554
    .local v8, "maxTimeout":J
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v1, v8, v9, v0}, Lcom/android/settings/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1556
    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .end local v2    # "adminTimeout":J
    .end local v6    # "displayTimeout":J
    .end local v8    # "maxTimeout":J
    :cond_0
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 1560
    iget-object v10, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v10}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1561
    const v10, 0x7f0f10fb

    invoke-virtual {p0, v10}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1589
    .local v6, "summary":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v10, v6}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1590
    return-void

    .line 1564
    .end local v6    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1565
    const-string/jumbo v11, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    .line 1564
    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1566
    .local v2, "currentTimeout":J
    iget-object v10, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v10}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1567
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v10}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 1568
    .local v7, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1569
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v7

    if-ge v4, v10, :cond_2

    .line 1570
    aget-object v10, v7, v4

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1571
    .local v8, "timeout":J
    cmp-long v10, v2, v8

    if-ltz v10, :cond_1

    .line 1572
    move v0, v4

    .line 1569
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1576
    .end local v8    # "timeout":J
    :cond_2
    const-string/jumbo v10, "trust_agent"

    invoke-virtual {p0, v10}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 1577
    .local v5, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 1578
    aget-object v10, v7, v0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 1579
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 1580
    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1579
    const v11, 0x7f0f06f3

    invoke-virtual {p0, v11, v10}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 1582
    .end local v6    # "summary":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 1583
    aget-object v11, v1, v0

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 1582
    const v11, 0x7f0f06f4

    invoke-virtual {p0, v11, v10}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "summary":Ljava/lang/String;
    goto/16 :goto_0

    .line 1586
    .end local v6    # "summary":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aget-object v11, v1, v0

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0f06f2

    invoke-virtual {p0, v11, v10}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "summary":Ljava/lang/String;
    goto/16 :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 1404
    const/16 v0, 0x57

    return v0
.end method

.method public isPassword()Z
    .locals 3

    .prologue
    .line 1429
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1430
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v2

    .line 1429
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1431
    .local v0, "passwordQuality":I
    sparse-switch v0, :sswitch_data_0

    .line 1439
    const/4 v1, 0x0

    return v1

    .line 1437
    :sswitch_0
    const/4 v1, 0x1

    return v1

    .line 1431
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public isPattern()Z
    .locals 3

    .prologue
    .line 1418
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1419
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v2

    .line 1418
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1420
    .local v0, "passwordQuality":I
    packed-switch v0, :pswitch_data_0

    .line 1424
    const/4 v1, 0x0

    return v1

    .line 1422
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 1420
    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1471
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1473
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V

    .line 1474
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 1409
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1410
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1411
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 1412
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V

    .line 1413
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 1630
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1631
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v3, "power_button_instantly_locks"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1632
    iget-object v3, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    .line 1651
    :cond_0
    :goto_0
    return v4

    .line 1633
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "lock_after_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1634
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1636
    .local v2, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1637
    const-string/jumbo v5, "lock_screen_lock_after_timeout"

    .line 1636
    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1641
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->setupLockAfterPreference()V

    .line 1642
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->updateLockAfterPreferenceSummary()V

    goto :goto_0

    .line 1638
    :catch_0
    move-exception v0

    .line 1639
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "SecuritySettings"

    const-string/jumbo v5, "could not persist lockAfter timeout setting"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1643
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v3, "visiblepattern"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1644
    iget-object v5, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 1646
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "show_password"

    move-object v3, p2

    .line 1647
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    .line 1646
    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1648
    iget-object v3, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    goto :goto_0

    .line 1647
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1446
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 1448
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V

    .line 1449
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 1451
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->isPattern()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1452
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1453
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v2

    .line 1452
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 1461
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 1462
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1463
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v2

    .line 1462
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 1466
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->updateOwnerInfo()V

    .line 1467
    return-void

    .line 1454
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->isPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1455
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1456
    const-string/jumbo v3, "show_password"

    .line 1455
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public updateOwnerInfo()V
    .locals 3

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1595
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    .line 1596
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v1

    .line 1595
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1603
    :cond_0
    :goto_0
    return-void

    .line 1598
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1599
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 1598
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1600
    :cond_2
    const v0, 0x7f0f06f9

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
