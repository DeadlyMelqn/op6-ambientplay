.class public Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AdvancedPowerUsageDetail.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/ButtonActionDialogFragment$AppButtonsDialogListener;


# static fields
.field public static final EXTRA_BACKGROUND_TIME:Ljava/lang/String; = "extra_background_time"

.field public static final EXTRA_FOREGROUND_TIME:Ljava/lang/String; = "extra_foreground_time"

.field public static final EXTRA_ICON_ID:Ljava/lang/String; = "extra_icon_id"

.field public static final EXTRA_LABEL:Ljava/lang/String; = "extra_label"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "extra_package_name"

.field public static final EXTRA_POWER_USAGE_AMOUNT:Ljava/lang/String; = "extra_power_usage_amount"

.field public static final EXTRA_POWER_USAGE_PERCENT:Ljava/lang/String; = "extra_power_usage_percent"

.field public static final EXTRA_UID:Ljava/lang/String; = "extra_uid"

.field private static final KEY_BATTERY_SUGG_APPS_INFOS:Ljava/lang/String; = "battery_sugg_apps_infos"

.field private static final KEY_PREF_BACKGROUND:Ljava/lang/String; = "app_usage_background"

.field private static final KEY_PREF_FOREGROUND:Ljava/lang/String; = "app_usage_foreground"

.field private static final KEY_PREF_HEADER:Ljava/lang/String; = "header_view"

.field private static final KEY_PREF_POWER_USAGE:Ljava/lang/String; = "app_power_usage"

.field private static final REQUEST_REMOVE_DEVICE_ADMIN:I = 0x1

.field private static final REQUEST_UNINSTALL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AdvancedPowerUsageDetail"

.field private static mPackageName:Ljava/lang/String;

.field private static mUid:I


# instance fields
.field private mAppButtonsPreferenceController:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

.field mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

.field private mBackgroundPreference:Landroid/support/v7/preference/Preference;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

.field private mForegroundPreference:Landroid/support/v7/preference/Preference;

.field mHeaderPreference:Lcom/android/settings/applications/LayoutPreference;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerUsagePreference:Landroid/support/v7/preference/Preference;

.field mState:Lcom/android/settingslib/applications/ApplicationsState;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 108
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "package"

    sget-object v3, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "zhuyang--mPackageName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    sget-object v1, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 115
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 116
    const v3, 0x7f0f0afa

    const/4 v6, 0x0

    move-object v5, v4

    .line 115
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 117
    return-void
.end method

.method public static startBatteryDetailPage(Lcom/android/settings/SettingsActivity;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;)V
    .locals 16
    .param p0, "caller"    # Lcom/android/settings/SettingsActivity;
    .param p1, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "helper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p3, "which"    # I
    .param p4, "entry"    # Lcom/android/settings/fuelgauge/BatteryEntry;
    .param p5, "usagePercent"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    .line 123
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v4, "args":Landroid/os/Bundle;
    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    .line 125
    .local v14, "sipper":Lcom/android/internal/os/BatterySipper;
    iget-object v15, v14, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 126
    .local v15, "uid":Landroid/os/BatteryStats$Uid;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v10

    .line 127
    .local v10, "batteryUtils":Lcom/android/settings/fuelgauge/BatteryUtils;
    iget-object v2, v14, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v2, v3, :cond_0

    const/4 v11, 0x1

    .line 129
    .local v11, "isTypeApp":Z
    :goto_0
    if-eqz v11, :cond_1

    .line 130
    const/4 v2, 0x0

    .line 129
    move/from16 v0, p3

    invoke-virtual {v10, v2, v15, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v12

    .line 131
    .local v12, "foregroundTimeMs":J
    :goto_1
    if-eqz v11, :cond_2

    .line 132
    const/4 v2, 0x1

    .line 131
    move/from16 v0, p3

    invoke-virtual {v10, v2, v15, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v8

    .line 134
    .local v8, "backgroundTimeMs":J
    :goto_2
    iget-object v2, v14, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    const-string/jumbo v2, "extra_label"

    invoke-virtual/range {p4 .. p4}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string/jumbo v2, "extra_icon_id"

    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string/jumbo v2, "extra_package_name"

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    .line 146
    :goto_3
    const-string/jumbo v2, "extra_uid"

    invoke-virtual {v14}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    const-string/jumbo v2, "extra_background_time"

    invoke-virtual {v4, v2, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 148
    const-string/jumbo v2, "extra_foreground_time"

    invoke-virtual {v4, v2, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 149
    const-string/jumbo v2, "extra_power_usage_percent"

    move-object/from16 v0, p5

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v2, "extra_power_usage_amount"

    iget-wide v6, v14, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    double-to-int v3, v6

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    invoke-virtual {v14}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v2

    sput v2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUid:I

    .line 152
    const-class v2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 154
    new-instance v7, Landroid/os/UserHandle;

    invoke-virtual {v14}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v7, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 153
    const v5, 0x7f0f125e

    const/4 v6, 0x0

    move-object/from16 v2, p0

    .line 152
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V

    .line 155
    return-void

    .line 127
    .end local v8    # "backgroundTimeMs":J
    .end local v11    # "isTypeApp":Z
    .end local v12    # "foregroundTimeMs":J
    :cond_0
    const/4 v11, 0x0

    .restart local v11    # "isTypeApp":Z
    goto/16 :goto_0

    .line 130
    :cond_1
    iget-wide v12, v14, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .restart local v12    # "foregroundTimeMs":J
    goto :goto_1

    .line 132
    :cond_2
    const-wide/16 v8, 0x0

    .restart local v8    # "backgroundTimeMs":J
    goto :goto_2

    .line 142
    :cond_3
    const-string/jumbo v2, "extra_package_name"

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    sput-object v2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    goto :goto_3
.end method

.method public static startBatteryDetailPage(Lcom/android/settings/SettingsActivity;Landroid/support/v14/preference/PreferenceFragment;Ljava/lang/String;)V
    .locals 6
    .param p0, "caller"    # Lcom/android/settings/SettingsActivity;
    .param p1, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v2, Landroid/os/Bundle;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 160
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "extra_package_name"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v0, "extra_power_usage_percent"

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sput-object p2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    .line 163
    const-class v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 164
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const v3, 0x7f0f125e

    const/4 v4, 0x0

    move-object v0, p0

    .line 163
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsActivity;->startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V

    .line 165
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    const-string/jumbo v0, "AdvancedPowerUsageDetail"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 265
    const/16 v0, 0x35

    return v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 280
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v12, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/core/PreferenceController;>;"
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    .line 282
    .local v11, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "extra_uid"

    invoke-virtual {v11, v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 283
    .local v13, "uid":I
    const-string/jumbo v0, "extra_package_name"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "packageName":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    invoke-direct {v0, p1, v13}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;-><init>(Landroid/content/Context;I)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 286
    invoke-direct {v1, v0, p0, v4}, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Landroid/app/Fragment;Ljava/lang/String;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    .line 290
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUserManager:Landroid/os/UserManager;

    iget-object v8, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x1

    move-object v2, p0

    .line 288
    invoke-direct/range {v0 .. v10}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Landroid/app/Fragment;Lcom/android/settings/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;Landroid/os/UserManager;Landroid/content/pm/PackageManager;II)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 291
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    return-object v12
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .prologue
    .line 275
    const v0, 0x7f08007e

    return v0
.end method

.method public handleDialogClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->handleDialogClick(I)V

    .line 309
    :cond_0
    return-void
.end method

.method initHeader()V
    .locals 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 231
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mHeaderPreference:Lcom/android/settings/applications/LayoutPreference;

    const v8, 0x7f0a00b0

    invoke-virtual {v7, v8}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 232
    .local v0, "appSnippet":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 233
    .local v2, "context":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 234
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v7

    invoke-interface {v7, p0, v0}, Lcom/android/settings/applications/ApplicationFeatureProvider;->newAppHeaderController(Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v7

    invoke-virtual {v7, v9, v9}, Lcom/android/settings/applications/AppHeaderController;->setButtonActions(II)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    .line 240
    .local v3, "controller":Lcom/android/settings/applications/AppHeaderController;
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v7, :cond_1

    .line 241
    const-string/jumbo v7, "extra_label"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/settings/applications/AppHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/applications/AppHeaderController;

    .line 243
    const-string/jumbo v7, "extra_icon_id"

    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 244
    .local v4, "iconId":I
    if-nez v4, :cond_0

    .line 245
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/settings/applications/AppHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/applications/AppHeaderController;

    .line 260
    .end local v4    # "iconId":I
    :goto_0
    const/4 v7, 0x1

    invoke-virtual {v3, v2, v7}, Lcom/android/settings/applications/AppHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 261
    return-void

    .line 247
    .restart local v4    # "iconId":I
    :cond_0
    const-string/jumbo v7, "extra_icon_id"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/settings/applications/AppHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/applications/AppHeaderController;

    goto :goto_0

    .line 250
    .end local v4    # "iconId":I
    :cond_1
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v8, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v7, v8}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 251
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v7}, Lcom/android/settings/applications/AppHeaderController;->setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppHeaderController;

    .line 252
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v7}, Lcom/android/settings/applications/AppHeaderController;->setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppHeaderController;

    .line 253
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    .line 254
    .local v5, "isInstantApp":Z
    if-eqz v5, :cond_2

    .line 255
    const/4 v6, 0x0

    .line 256
    :goto_1
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/settings/applications/AppHeaderController;->setIsInstantApp(Z)Lcom/android/settings/applications/AppHeaderController;

    .line 257
    invoke-virtual {v3, v6}, Lcom/android/settings/applications/AppHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/applications/AppHeaderController;

    goto :goto_0

    .line 255
    :cond_2
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lcom/android/settings/Utils;->getInstallationStatus(Landroid/content/pm/ApplicationInfo;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "summary":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 298
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->handleActivityResult(IILandroid/content/Intent;)V

    .line 302
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/app/Activity;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 172
    new-instance v1, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;

    .line 173
    const-string/jumbo v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 172
    invoke-direct {v1, v0}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    .line 174
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUserManager:Landroid/os/UserManager;

    .line 175
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 177
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "extra_uid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 184
    .local v1, "uid":I
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "extra_package_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    .line 185
    const-string/jumbo v2, "app_usage_foreground"

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mForegroundPreference:Landroid/support/v7/preference/Preference;

    .line 186
    const-string/jumbo v2, "app_usage_background"

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundPreference:Landroid/support/v7/preference/Preference;

    .line 187
    const-string/jumbo v2, "app_power_usage"

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPowerUsagePreference:Landroid/support/v7/preference/Preference;

    .line 188
    const-string/jumbo v2, "header_view"

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/LayoutPreference;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mHeaderPreference:Lcom/android/settings/applications/LayoutPreference;

    .line 189
    new-instance v2, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    .line 190
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "extra_package_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 200
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 223
    const-string/jumbo v0, "battery_sugg_apps_infos"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startApplicationDetailsActivity()V

    .line 226
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 204
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initHeader()V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 209
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 211
    .local v3, "context":Landroid/content/Context;
    const-string/jumbo v8, "extra_foreground_time"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 212
    .local v4, "foregroundTimeMs":J
    const-string/jumbo v8, "extra_background_time"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 213
    .local v0, "backgroundTimeMs":J
    const-string/jumbo v8, "extra_power_usage_percent"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 214
    .local v7, "usagePercent":Ljava/lang/String;
    const-string/jumbo v8, "extra_power_usage_amount"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 215
    .local v6, "powerMah":I
    iget-object v8, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mForegroundPreference:Landroid/support/v7/preference/Preference;

    long-to-double v10, v4

    invoke-static {v3, v10, v11, v12}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v8, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundPreference:Landroid/support/v7/preference/Preference;

    long-to-double v10, v0

    invoke-static {v3, v10, v11, v12}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v8, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPowerUsagePreference:Landroid/support/v7/preference/Preference;

    .line 218
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const v10, 0x7f0f125f

    invoke-virtual {p0, v10, v9}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 217
    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method
