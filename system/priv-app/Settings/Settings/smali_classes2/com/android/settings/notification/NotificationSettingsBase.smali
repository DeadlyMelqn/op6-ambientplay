.class public abstract Lcom/android/settings/notification/NotificationSettingsBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationSettingsBase$1;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field protected static final KEY_ALLOW_SOUND:Ljava/lang/String; = "allow_sound"

.field protected static final KEY_APP_LINK:Ljava/lang/String; = "app_link"

.field protected static final KEY_BADGE:Ljava/lang/String; = "badge"

.field protected static final KEY_BLOCK:Ljava/lang/String; = "block"

.field protected static final KEY_BLOCKED_DESC:Ljava/lang/String; = "block_desc"

.field protected static final KEY_BYPASS_DND:Ljava/lang/String; = "bypass_dnd"

.field protected static final KEY_HEADER:Ljava/lang/String; = "header"

.field protected static final KEY_VISIBILITY_OVERRIDE:Ljava/lang/String; = "visibility_override"

.field protected static final ORDER_FIRST:I = -0x1f4

.field protected static final ORDER_LAST:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "NotifiSettingsBase"


# instance fields
.field protected mAppLink:Landroid/support/v7/preference/Preference;

.field protected mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

.field protected mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mBadge:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field protected mBlockBar:Lcom/android/settings/applications/LayoutPreference;

.field protected mBlockedDesc:Lcom/android/settingslib/widget/FooterPreference;

.field protected mChannel:Landroid/app/NotificationChannel;

.field protected mContext:Landroid/content/Context;

.field protected mCreated:Z

.field protected mDndVisualEffectsSuppressed:Z

.field protected mImportanceToggle:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field protected mListeningToPackageRemove:Z

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mNm:Landroid/app/NotificationManager;

.field protected final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field protected mPkg:Ljava/lang/String;

.field protected mPkgInfo:Landroid/content/pm/PackageInfo;

.field protected mPm:Landroid/content/pm/PackageManager;

.field protected mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field protected mShowLegacyChannelConfig:Z

.field protected mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mUid:I

.field protected mUm:Landroid/os/UserManager;

.field protected mUserId:I

.field protected mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/NotificationSettingsBase;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/NotificationSettingsBase;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getGlobalVisibility()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-string/jumbo v0, "NotifiSettingsBase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    sput-object v0, Lcom/android/settings/notification/NotificationSettingsBase;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 91
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mShowLegacyChannelConfig:Z

    .line 500
    new-instance v0, Lcom/android/settings/notification/NotificationSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettingsBase$1;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    return-void
.end method

.method private applyConfigActivities(Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/NotificationBackend$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/notification/NotificationBackend$AppRow;>;"
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v5, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v6, "NotifiSettingsBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " preference activities"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 237
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, " ;_;"

    .line 236
    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ri$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 239
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 240
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 241
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/NotificationBackend$AppRow;

    .line 242
    .local v4, "row":Lcom/android/settings/notification/NotificationBackend$AppRow;
    if-nez v4, :cond_3

    .line 243
    sget-boolean v5, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "NotifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 244
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 243
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 244
    const-string/jumbo v7, ") for unknown package "

    .line 243
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 245
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 243
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 237
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3    # "ri$iterator":Ljava/util/Iterator;
    .end local v4    # "row":Lcom/android/settings/notification/NotificationBackend$AppRow;
    :cond_2
    const-string/jumbo v5, ""

    goto :goto_0

    .line 248
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "ri$iterator":Ljava/util/Iterator;
    .restart local v4    # "row":Lcom/android/settings/notification/NotificationBackend$AppRow;
    :cond_3
    iget-object v5, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_4

    .line 249
    sget-boolean v5, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "NotifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 250
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 249
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 250
    const-string/jumbo v7, ") for package "

    .line 249
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 251
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 249
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 254
    :cond_4
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/settings/notification/NotificationSettingsBase;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 255
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 254
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    .line 256
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v5, :cond_1

    .line 257
    iget-object v5, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.extra.CHANNEL_ID"

    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 260
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings/notification/NotificationBackend$AppRow;
    :cond_5
    return-void
.end method

.method private findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v8, 0x0

    .line 263
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 264
    :cond_0
    return-object v8

    .line 266
    :cond_1
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    .line 268
    array-length v0, v4

    .line 269
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 270
    aget-object v3, v4, v2

    .line 271
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 273
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x40

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "NotifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :cond_3
    return-object v8
.end method

.method private getGlobalVisibility()I
    .locals 2

    .prologue
    .line 433
    const/16 v0, -0x3e8

    .line 434
    .local v0, "globalVis":I
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getLockscreenNotificationsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 435
    const/4 v0, -0x1

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 436
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getLockscreenAllowPrivateNotifications()Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 449
    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    .line 448
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 444
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 443
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private queryNotificationConfigActivities()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    sget-boolean v1, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NotifiSettingsBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 221
    sget-object v3, Lcom/android/settings/notification/NotificationSettingsBase;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    .line 223
    sget-object v2, Lcom/android/settings/notification/NotificationSettingsBase;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 224
    const/4 v3, 0x0

    .line 222
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 226
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "entry"    # Ljava/lang/CharSequence;
    .param p2, "entryValue"    # Ljava/lang/CharSequence;
    .param p3, "keyguardNotificationFeatures"    # I

    .prologue
    .line 424
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUserId:I

    .line 423
    invoke-static {v2, p3, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 425
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    .line 427
    new-instance v1, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 428
    .local v1, "item":Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/RestrictedDropDownPreference;->addRestrictedItem(Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;)V

    .line 430
    .end local v1    # "item":Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;
    :cond_0
    return-void
.end method

.method private setupImportanceToggle()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 309
    const-string/jumbo v0, "allow_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettingsBase;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportanceToggle:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 310
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportanceToggle:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 311
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportanceToggle:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettingsBase;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportanceToggle:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 311
    :goto_0
    invoke-virtual {v3, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportanceToggle:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 314
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    const/16 v4, -0x3e8

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 313
    :cond_0
    :goto_1
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mImportanceToggle:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 316
    new-instance v1, Lcom/android/settings/notification/NotificationSettingsBase$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettingsBase$2;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;)V

    .line 315
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 328
    return-void

    :cond_1
    move v0, v1

    .line 311
    goto :goto_0

    :cond_2
    move v1, v2

    .line 313
    goto :goto_1
.end method


# virtual methods
.method protected addAppLinkPref()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppLink:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    .line 285
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettingsBase;->addPreferencesFromResource(I)V

    .line 286
    const-string/jumbo v0, "app_link"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettingsBase;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppLink:Landroid/support/v7/preference/Preference;

    .line 287
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppLink:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 289
    :cond_0
    return-void
.end method

.method protected checkCanBeVisible(I)Z
    .locals 3
    .param p1, "minImportanceVisible"    # I

    .prologue
    const/4 v1, 0x1

    .line 413
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    .line 414
    .local v0, "importance":I
    const/16 v2, -0x3e8

    if-ne v0, v2, :cond_0

    .line 415
    return v1

    .line 417
    :cond_0
    if-lt v0, p1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected collectConfigActivities(Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/NotificationBackend$AppRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/notification/NotificationBackend$AppRow;>;"
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->queryNotificationConfigActivities()Ljava/util/List;

    move-result-object v0

    .line 231
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/NotificationSettingsBase;->applyConfigActivities(Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 232
    return-void
.end method

.method hasValidSound(Landroid/app/NotificationChannel;)Z
    .locals 2
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .prologue
    .line 513
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChannelBlockable(ZLandroid/app/NotificationChannel;)Z
    .locals 3
    .param p1, "systemApp"    # Z
    .param p2, "channel"    # Landroid/app/NotificationChannel;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 470
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-nez v2, :cond_0

    .line 471
    return v0

    .line 474
    :cond_0
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v2

    if-nez v2, :cond_1

    .line 475
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-nez v2, :cond_2

    .line 474
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 475
    goto :goto_0
.end method

.method protected isChannelConfigurable(Landroid/app/NotificationChannel;)Z
    .locals 2
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .prologue
    .line 466
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isLockScreenSecure()Z
    .locals 4

    .prologue
    .line 453
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v2, :cond_0

    .line 454
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 456
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 457
    .local v0, "lockscreenSecure":Z
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 458
    .local v1, "parentUser":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_1

    .line 459
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 462
    :cond_1
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    sget-boolean v0, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NotifiSettingsBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityCreated mCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mCreated:Z

    if-eqz v0, :cond_1

    .line 123
    const-string/jumbo v0, "NotifiSettingsBase"

    const-string/jumbo v1, "onActivityCreated: ignoring duplicate call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 126
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mCreated:Z

    .line 127
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 134
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 135
    .local v0, "args":Landroid/os/Bundle;
    sget-boolean v3, Lcom/android/settings/notification/NotificationSettingsBase;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "NotifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate getIntent()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 137
    const-string/jumbo v3, "NotifiSettingsBase"

    const-string/jumbo v4, "No intent"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->toastAndFinish()V

    .line 139
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    .line 143
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUm:Landroid/os/UserManager;

    .line 144
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mNm:Landroid/app/NotificationManager;

    .line 146
    if-eqz v0, :cond_4

    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    :goto_0
    iput-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    .line 149
    if-eqz v0, :cond_5

    const-string/jumbo v3, "uid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 150
    const-string/jumbo v3, "uid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 149
    :goto_1
    iput v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    .line 153
    iget v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    if-gez v3, :cond_2

    .line 155
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-direct {p0, v3, v4}, Lcom/android/settings/notification/NotificationSettingsBase;->findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 162
    iget v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v3, :cond_6

    .line 163
    :cond_3
    const-string/jumbo v3, "NotifiSettingsBase"

    const-string/jumbo v4, "Missing package or uid or packageinfo"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->toastAndFinish()V

    .line 165
    return-void

    .line 148
    :cond_4
    const-string/jumbo v3, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 151
    :cond_5
    const-string/jumbo v3, "app_uid"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 168
    :cond_6
    iget v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUserId:I

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->startListeningToPackageRemove()V

    .line 170
    return-void

    .line 156
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->stopListeningToPackageRemove()V

    .line 175
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 176
    return-void
.end method

.method protected onPackageRemoved()V
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 498
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 180
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 181
    iget v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_1

    .line 182
    :cond_0
    const-string/jumbo v2, "NotifiSettingsBase"

    const-string/jumbo v3, "Missing package or uid or packageinfo"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->finish()V

    .line 184
    return-void

    .line 186
    :cond_1
    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 188
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string/jumbo v4, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 189
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    const-string/jumbo v6, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    .line 188
    :cond_2
    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    .line 192
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUserId:I

    .line 191
    invoke-static {v2, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfApplicationIsSuspended(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 193
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 194
    .local v1, "policy":Landroid/app/NotificationManager$Policy;
    if-nez v1, :cond_4

    :cond_3
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mDndVisualEffectsSuppressed:Z

    .line 197
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUserId:I

    .line 196
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfApplicationIsSuspended(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 198
    return-void

    .line 194
    :cond_4
    iget v2, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected populateDefaultChannelPrefs()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_0

    .line 293
    const v1, 0x7f080041

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationSettingsBase;->addPreferencesFromResource(I)V

    .line 294
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationSettingsBase;->setupPriorityPref(Z)V

    .line 295
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationSettingsBase;->setupVisOverridePref(I)V

    .line 296
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->setupImportanceToggle()V

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->setupBadge()V

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-nez v2, :cond_1

    .line 300
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 299
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 301
    return-void
.end method

.method protected setVisible(Landroid/support/v7/preference/Preference;Z)V
    .locals 1
    .param p1, "p"    # Landroid/support/v7/preference/Preference;
    .param p2, "visible"    # Z

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/settings/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;Z)V

    .line 202
    return-void
.end method

.method protected setVisible(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;Z)V
    .locals 2
    .param p1, "parent"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "p"    # Landroid/support/v7/preference/Preference;
    .param p3, "visible"    # Z

    .prologue
    .line 205
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 206
    .local v0, "isVisible":Z
    :goto_0
    if-ne v0, p3, :cond_1

    return-void

    .line 205
    .end local v0    # "isVisible":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isVisible":Z
    goto :goto_0

    .line 207
    :cond_1
    if-eqz p3, :cond_2

    .line 208
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 212
    :goto_1
    return-void

    .line 210
    :cond_2
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method

.method abstract setupBadge()V
.end method

.method protected setupBlockDesc(I)V
    .locals 3
    .param p1, "summaryResId"    # I

    .prologue
    const/4 v2, 0x0

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 403
    const-string/jumbo v1, "block_desc"

    .line 402
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBlockedDesc:Lcom/android/settingslib/widget/FooterPreference;

    .line 404
    new-instance v0, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBlockedDesc:Lcom/android/settingslib/widget/FooterPreference;

    .line 405
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBlockedDesc:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/FooterPreference;->setSelectable(Z)V

    .line 406
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBlockedDesc:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBlockedDesc:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/FooterPreference;->setEnabled(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBlockedDesc:Lcom/android/settingslib/widget/FooterPreference;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setOrder(I)V

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mBlockedDesc:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 410
    return-void
.end method

.method protected setupPriorityPref(Z)V
    .locals 2
    .param p1, "priority"    # Z

    .prologue
    .line 331
    const-string/jumbo v0, "bypass_dnd"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettingsBase;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 332
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 333
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettingsBase;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettingsBase$3;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettingsBase$3;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 345
    return-void

    .line 333
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setupVisOverridePref(I)V
    .locals 9
    .param p1, "sensitive"    # I

    .prologue
    const/16 v8, -0x3e8

    .line 349
    const-string/jumbo v6, "visibility_override"

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationSettingsBase;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/RestrictedDropDownPreference;

    .line 348
    iput-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->clearRestrictedItems()V

    .line 354
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getLockscreenNotificationsEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getLockscreenAllowPrivateNotifications()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 356
    const v6, 0x7f0f0f7d

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "summaryShowEntry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "summaryShowEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    const/16 v6, 0xc

    .line 361
    invoke-direct {p0, v3, v4, v6}, Lcom/android/settings/notification/NotificationSettingsBase;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 366
    .end local v3    # "summaryShowEntry":Ljava/lang/String;
    .end local v4    # "summaryShowEntryValue":Ljava/lang/String;
    :cond_0
    const v6, 0x7f0f0f7e

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "summaryHideEntry":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "summaryHideEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    const/4 v6, 0x4

    .line 370
    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/notification/NotificationSettingsBase;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 372
    const v6, 0x7f0f0f7f

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 375
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 377
    if-ne p1, v8, :cond_1

    .line 378
    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getGlobalVisibility()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 382
    :goto_0
    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    const-string/jumbo v7, "%s"

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    .line 385
    new-instance v7, Lcom/android/settings/notification/NotificationSettingsBase$4;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/NotificationSettingsBase$4;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;)V

    .line 384
    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 398
    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 399
    return-void

    .line 380
    :cond_1
    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/RestrictedDropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startListeningToPackageRemove()V
    .locals 3

    .prologue
    .line 479
    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mListeningToPackageRemove:Z

    if-eqz v1, :cond_0

    .line 480
    return-void

    .line 482
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mListeningToPackageRemove:Z

    .line 483
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 486
    return-void
.end method

.method protected stopListeningToPackageRemove()V
    .locals 2

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    .line 490
    return-void

    .line 492
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mListeningToPackageRemove:Z

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 494
    return-void
.end method

.method protected toastAndFinish()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0b35

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 217
    return-void
.end method

.method abstract updateDependents(Z)V
.end method
