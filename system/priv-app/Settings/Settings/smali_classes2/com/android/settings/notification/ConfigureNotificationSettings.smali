.class public Lcom/android/settings/notification/ConfigureNotificationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ConfigureNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:I = 0x1

.field private static final KEY_LOCK_SCREEN_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_notifications"

.field private static final KEY_LOCK_SCREEN_PROFILE_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_notifications_profile"

.field private static final KEY_NOTIFICATION_BADGING:Ljava/lang/String; = "notification_badging"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final TAG:Ljava/lang/String; = "ConfigNotiSettings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

.field private mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

.field private mLockscreenSelectedValue:I

.field private mLockscreenSelectedValueProfile:I

.field private mNotificationBadging:Landroid/support/v14/preference/SwitchPreference;

.field private mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

.field private mProfileChallengeUserId:I

.field private mSecure:Z

.field private mSecureProfile:Z

.field private final mSettingsObserver:Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ConfigureNotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/ConfigureNotificationSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/ConfigureNotificationSettings;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/ConfigureNotificationSettings;

    .prologue
    iget v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/notification/ConfigureNotificationSettings;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/ConfigureNotificationSettings;

    .prologue
    iget v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/notification/ConfigureNotificationSettings;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/ConfigureNotificationSettings;

    .prologue
    iget v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/notification/ConfigureNotificationSettings;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/ConfigureNotificationSettings;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/notification/ConfigureNotificationSettings;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/ConfigureNotificationSettings;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/ConfigureNotificationSettings;

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/ConfigureNotificationSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/ConfigureNotificationSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateNotificationBadging()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/ConfigureNotificationSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updatePulse()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;

    .line 53
    return-void
.end method

.method private getLockscreenAllowPrivateNotifications(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 392
    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    .line 391
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 387
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 386
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initLockscreenNotifications()V
    .locals 11

    .prologue
    const v10, 0x7f0f0f7f

    const v9, 0x7f0f0f7e

    const v8, 0x7f0f0f7d

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    .line 196
    const-string/jumbo v7, "lock_screen_notifications"

    .line 195
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/RestrictedDropDownPreference;

    iput-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    .line 197
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    if-nez v6, :cond_0

    .line 198
    const-string/jumbo v6, "ConfigNotiSettings"

    const-string/jumbo v7, "Preference not found: lock_screen_notifications"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {p0, v8}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "summaryShowEntry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "summaryShowEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    const/16 v6, 0xc

    .line 212
    invoke-direct {p0, v3, v4, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 215
    iget-boolean v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecure:Z

    if-eqz v6, :cond_1

    .line 216
    invoke-virtual {p0, v9}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "summaryHideEntry":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "summaryHideEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    const/4 v6, 0x4

    .line 221
    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 225
    .end local v1    # "summaryHideEntry":Ljava/lang/String;
    .end local v2    # "summaryHideEntryValue":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 226
    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 227
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateLockscreenNotifications()V

    .line 228
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 229
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    new-instance v7, Lcom/android/settings/notification/ConfigureNotificationSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$3;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_2
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initLockscreenNotificationsForProfile()V
    .locals 11

    .prologue
    const v10, 0x7f0f0f84

    const v9, 0x7f0f0f83

    const v8, 0x7f0f0f82

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    .line 260
    const-string/jumbo v7, "lock_screen_notifications_profile"

    .line 259
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/RestrictedDropDownPreference;

    iput-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    .line 261
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    if-nez v6, :cond_0

    .line 262
    const-string/jumbo v6, "ConfigNotiSettings"

    const-string/jumbo v7, "Preference not found: lock_screen_notifications_profile"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 265
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p0, v8}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "summaryShowEntry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "summaryShowEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    const/16 v6, 0xc

    .line 276
    invoke-direct {p0, v3, v4, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 279
    iget-boolean v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecureProfile:Z

    if-eqz v6, :cond_1

    .line 280
    invoke-virtual {p0, v9}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "summaryHideEntry":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "summaryHideEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const/4 v6, 0x4

    .line 286
    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 290
    .end local v1    # "summaryHideEntry":Ljava/lang/String;
    .end local v2    # "summaryHideEntryValue":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    .line 291
    new-instance v7, Lcom/android/settings/notification/-$Lambda$LCWObp2KSHYJ82o6npbwHIzQjhY;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/-$Lambda$LCWObp2KSHYJ82o6npbwHIzQjhY;-><init>(Ljava/lang/Object;)V

    .line 290
    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setOnPreClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 296
    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 297
    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 298
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateLockscreenNotificationsForProfile()V

    .line 299
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 300
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    new-instance v7, Lcom/android/settings/notification/ConfigureNotificationSettings$4;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$4;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_2
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initNotificationBadging()V
    .locals 2

    .prologue
    .line 125
    const-string/jumbo v0, "notification_badging"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationBadging:Landroid/support/v14/preference/SwitchPreference;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    const v1, 0x1120083

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationBadging:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 146
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateNotificationBadging()V

    .line 131
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationBadging:Landroid/support/v14/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/notification/ConfigureNotificationSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$1;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initPulse()V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "notification_pulse"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    .line 159
    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    .line 161
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 162
    const-string/jumbo v0, "ConfigNotiSettings"

    const-string/jumbo v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 166
    const v1, 0x1120077

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 180
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updatePulse()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/ConfigureNotificationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$2;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "entry"    # Ljava/lang/CharSequence;
    .param p2, "entryValue"    # Ljava/lang/CharSequence;
    .param p3, "keyguardNotificationFeatures"    # I

    .prologue
    .line 334
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 333
    invoke-static {v2, p3, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 335
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    if-eqz v2, :cond_0

    .line 337
    new-instance v1, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 338
    .local v1, "item":Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/RestrictedDropDownPreference;->addRestrictedItem(Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;)V

    .line 353
    .end local v1    # "item":Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;
    :cond_0
    return-void
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 356
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    if-nez v2, :cond_0

    .line 357
    return-void

    .line 359
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLockscreenNotificationsEnabled(I)Z

    move-result v1

    .line 360
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecure:Z

    if-eqz v2, :cond_1

    .line 361
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLockscreenAllowPrivateNotifications(I)Z

    move-result v0

    .line 362
    :goto_0
    if-nez v1, :cond_2

    const v2, 0x7f0f0f7f

    :goto_1
    iput v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    .line 365
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/RestrictedDropDownPreference;

    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 366
    return-void

    .line 360
    :cond_1
    const/4 v0, 0x1

    .local v0, "allowPrivate":Z
    goto :goto_0

    .line 363
    .end local v0    # "allowPrivate":Z
    :cond_2
    if-eqz v0, :cond_3

    const v2, 0x7f0f0f7d

    goto :goto_1

    .line 364
    :cond_3
    const v2, 0x7f0f0f7e

    goto :goto_1
.end method

.method private updateLockscreenNotificationsForProfile()V
    .locals 4

    .prologue
    .line 369
    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_0

    .line 370
    return-void

    .line 372
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    if-nez v2, :cond_1

    .line 373
    return-void

    .line 375
    :cond_1
    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLockscreenNotificationsEnabled(I)Z

    move-result v1

    .line 376
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecureProfile:Z

    if-eqz v2, :cond_2

    .line 377
    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLockscreenAllowPrivateNotifications(I)Z

    move-result v0

    .line 378
    :goto_0
    if-nez v1, :cond_3

    .line 379
    const v2, 0x7f0f0f84

    .line 378
    :goto_1
    iput v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    .line 382
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/RestrictedDropDownPreference;

    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 383
    return-void

    .line 376
    :cond_2
    const/4 v0, 0x1

    .local v0, "allowPrivate":Z
    goto :goto_0

    .line 380
    .end local v0    # "allowPrivate":Z
    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f0f0f82

    goto :goto_1

    .line 381
    :cond_4
    const v2, 0x7f0f0f83

    goto :goto_1
.end method

.method private updateNotificationBadging()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 149
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationBadging:Landroid/support/v14/preference/SwitchPreference;

    if-nez v1, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 153
    const-string/jumbo v2, "notification_badging"

    .line 152
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    .line 154
    .local v0, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationBadging:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 155
    return-void

    .line 152
    .end local v0    # "checked":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "checked":Z
    goto :goto_0
.end method

.method private updatePulse()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 183
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 184
    return-void

    .line 187
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 188
    const-string/jumbo v4, "notification_light_pulse"

    .line 187
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_1
    return-void

    .line 187
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v1, "ConfigNotiSettings"

    const-string/jumbo v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x151

    return v0
.end method

.method synthetic lambda$-com_android_settings_notification_ConfigureNotificationSettings_13076(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "p"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    .line 292
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 293
    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    .line 291
    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    .line 87
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 86
    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    .line 89
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, "utils":Lcom/android/internal/widget/LockPatternUtils;
    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    xor-int/lit8 v0, v3, 0x1

    .line 92
    .local v0, "isUnified":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecure:Z

    .line 93
    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_0

    .line 94
    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecure:Z

    .line 93
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecureProfile:Z

    .line 96
    const v2, 0x7f08001f

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->addPreferencesFromResource(I)V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->initPulse()V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->initLockscreenNotifications()V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->initNotificationBadging()V

    .line 110
    return-void

    .line 94
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->register(Z)V

    .line 122
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->register(Z)V

    .line 116
    return-void
.end method
