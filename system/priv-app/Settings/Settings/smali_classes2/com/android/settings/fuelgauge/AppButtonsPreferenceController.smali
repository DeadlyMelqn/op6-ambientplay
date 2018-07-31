.class public Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "AppButtonsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/lifecycle/events/OnDestroy;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$1;,
        Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$2;,
        Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$DisableChangerRunnable;
    }
.end annotation


# static fields
.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field private static final KEY_ACTION_BUTTONS:Ljava/lang/String; = "action_buttons"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "AppButtonsPrefCtl"


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;

.field mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mAppsControlDisallowedBySystem:Z

.field private mButtonsPref:Lcom/android/settings/applications/LayoutPreference;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field mDisableAfterUninstall:Z

.field private mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

.field private mFinishing:Z

.field mForceStopButton:Landroid/widget/Button;

.field private mFragment:Landroid/app/Fragment;

.field final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListeningToPackageRemove:Z

.field private mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

.field mPackageInfo:Landroid/content/pm/PackageInfo;

.field mPackageName:Ljava/lang/String;

.field private final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mRequestRemoveDeviceAdmin:I

.field private final mRequestUninstall:I

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field mState:Lcom/android/settingslib/applications/ApplicationsState;

.field mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .prologue
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFinishing:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/settings/SettingsActivity;Landroid/app/Fragment;Lcom/android/settings/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;Landroid/os/UserManager;Landroid/content/pm/PackageManager;II)V
    .locals 2
    .param p1, "activity"    # Lcom/android/settings/SettingsActivity;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "state"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p6, "dpm"    # Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;
    .param p7, "userManager"    # Landroid/os/UserManager;
    .param p8, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p9, "requestUninstall"    # I
    .param p10, "requestRemoveDeviceAdmin"    # I

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    .line 103
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDisableAfterUninstall:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUpdatedSysApp:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFinishing:Z

    .line 600
    new-instance v0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$1;-><init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 701
    new-instance v0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$2;-><init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    instance-of v0, p2, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment$AppButtonsDialogListener;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 132
    const-string/jumbo v1, "Fragment should implement AppButtonsDialogListener"

    .line 131
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    .line 137
    iput-object p5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 138
    iput-object p6, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    .line 139
    iput-object p7, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 140
    iput-object p8, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 141
    iput-object p4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 143
    iput-object p2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 144
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserId:I

    .line 145
    iput p9, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mRequestUninstall:I

    .line 146
    iput p10, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mRequestRemoveDeviceAdmin:I

    .line 149
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserId:I

    invoke-virtual {v0, p4, v1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 152
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 153
    invoke-virtual {p3, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFinishing:Z

    goto :goto_0
.end method

.method private isDisabledUntilUsed()Z
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 569
    const/4 v1, 0x4

    .line 568
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProfileOrDeviceOwner(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 587
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 588
    .local v3, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v4, p1}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 589
    return v6

    .line 591
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 592
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v5, v4}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 593
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 594
    return v6

    .line 591
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 597
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method private isSingleUser()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 580
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    .line 581
    .local v0, "userCount":I
    if-eq v0, v1, :cond_0

    .line 582
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 581
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 582
    goto :goto_0
.end method

.method private refreshAndFinishIfPossible()V
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->setIntentAndFinish(Z)V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->startListeningToPackageRemove()V

    goto :goto_0
.end method

.method private setIntentAndFinish(Z)V
    .locals 4
    .param p1, "appChanged"    # Z

    .prologue
    .line 446
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 447
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "chg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFragment:Landroid/app/Fragment;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 449
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFinishing:Z

    .line 450
    return-void
.end method

.method private showDialogInner(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 573
    invoke-static {p1}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->newInstance(I)Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;

    move-result-object v0

    .line 574
    .local v0, "newFragment":Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFragment:Landroid/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 575
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 611
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 613
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 614
    .local v1, "match":I
    if-ltz v1, :cond_0

    .line 615
    const/4 v2, 0x1

    return v2

    .line 617
    .end local v1    # "match":I
    :catch_0
    move-exception v0

    .line 622
    :cond_0
    return v3
.end method

.method private startListeningToPackageRemove()V
    .locals 3

    .prologue
    .line 660
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    if-eqz v1, :cond_0

    .line 661
    return-void

    .line 663
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    .line 664
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 665
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 667
    return-void
.end method

.method private stopListeningToPackageRemove()V
    .locals 2

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    .line 671
    return-void

    .line 673
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    .line 674
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 675
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string/jumbo v0, "action_buttons"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settings/applications/LayoutPreference;

    .line 171
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a00ae

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUninstallButton:Landroid/widget/Button;

    .line 172
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUninstallButton:Landroid/widget/Button;

    const v1, 0x7f0f0b0b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a00af

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mForceStopButton:Landroid/widget/Button;

    .line 175
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mForceStopButton:Landroid/widget/Button;

    const v1, 0x7f0f0b05

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    :cond_0
    return-void
.end method

.method forceStopPackage(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 526
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/util/Pair;

    .line 527
    const/16 v6, 0x327

    .line 526
    invoke-virtual {v3, v4, v6, p1, v5}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 528
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 529
    const-string/jumbo v4, "activity"

    .line 528
    invoke-virtual {v3, v4}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 530
    .local v0, "am":Landroid/app/ActivityManager;
    const-string/jumbo v3, "AppButtonsPrefCtl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stopping package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 532
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 533
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 534
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 535
    .local v1, "newEnt":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 536
    iput-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->updateForceStopButton()V

    .line 539
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string/jumbo v0, "action_buttons"

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 270
    iget v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mRequestUninstall:I

    if-ne p1, v0, :cond_2

    .line 271
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDisableAfterUninstall:Z

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDisableAfterUninstall:Z

    .line 273
    new-instance v0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$DisableChangerRunnable;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 274
    const/4 v3, 0x3

    .line 273
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$DisableChangerRunnable;-><init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->refreshAndFinishIfPossible()V

    .line 280
    :cond_1
    :goto_0
    return-void

    .line 277
    :cond_2
    iget v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mRequestRemoveDeviceAdmin:I

    if-ne p1, v0, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->refreshAndFinishIfPossible()V

    goto :goto_0
.end method

.method public handleDialogClick(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/16 v4, 0x36a

    const/4 v3, 0x0

    .line 283
    packed-switch p1, :pswitch_data_0

    .line 299
    :goto_0
    return-void

    .line 285
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    new-array v2, v3, [Landroid/util/Pair;

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 287
    new-instance v0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$DisableChangerRunnable;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 288
    const/4 v3, 0x3

    .line 287
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$DisableChangerRunnable;-><init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 291
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    new-array v2, v3, [Landroid/util/Pair;

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 293
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 296
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method handleDisableable(Landroid/widget/Button;)Z
    .locals 5
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const v4, 0x7f0f0b0e

    .line 543
    const/4 v0, 0x0

    .line 547
    .local v0, "disableable":Z
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    .line 547
    if-eqz v1, :cond_1

    .line 550
    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 559
    :goto_0
    return v0

    .line 551
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->isDisabledUntilUsed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 552
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 553
    const/4 v0, 0x1

    goto :goto_0

    .line 555
    :cond_2
    const v1, 0x7f0f0b0f

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 556
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFallbackPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 465
    :try_start_0
    const-string/jumbo v2, "webviewupdate"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 464
    invoke-static {v2}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v1

    .line 466
    .local v1, "webviewUpdateService":Landroid/webkit/IWebViewUpdateService;
    invoke-interface {v1, p1}, Landroid/webkit/IWebViewUpdateService;->isFallbackPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    const/4 v2, 0x1

    return v2

    .line 469
    .end local v1    # "webviewUpdateService":Landroid/webkit/IWebViewUpdateService;
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 473
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "webviewUpdateService":Landroid/webkit/IWebViewUpdateService;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 564
    invoke-static {p1, p2, p3}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 213
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 214
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 215
    .local v1, "id":I
    const v5, 0x7f0a00ae

    if-ne v1, v5, :cond_9

    .line 217
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->stopListeningToPackageRemove()V

    .line 219
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const-class v6, Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .local v4, "uninstallDaIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    new-array v7, v9, [Landroid/util/Pair;

    .line 223
    const/16 v8, 0x369

    .line 222
    invoke-virtual {v5, v6, v8, v7}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 224
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFragment:Landroid/app/Fragment;

    iget v6, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mRequestRemoveDeviceAdmin:I

    invoke-virtual {v5, v4, v6}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 225
    return-void

    .line 228
    .end local v4    # "uninstallDaIntent":Landroid/content/Intent;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 229
    iget v6, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserId:I

    .line 228
    invoke-static {v5, v2, v6}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 230
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-boolean v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    if-nez v5, :cond_2

    .line 231
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget v6, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserId:I

    invoke-static {v5, v2, v6}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    .line 232
    :goto_0
    if-eqz v0, :cond_3

    xor-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_3

    .line 233
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v5, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 267
    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_1
    :goto_1
    return-void

    .line 230
    .restart local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_2
    const/4 v3, 0x1

    .local v3, "uninstallBlockedBySystem":Z
    goto :goto_0

    .line 234
    .end local v3    # "uninstallBlockedBySystem":Z
    :cond_3
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    .line 235
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->isDisabledUntilUsed()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    .line 239
    iget-boolean v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUpdatedSysApp:Z

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->isSingleUser()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 240
    invoke-direct {p0, v7}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->showDialogInner(I)V

    goto :goto_1

    .line 242
    :cond_4
    invoke-direct {p0, v9}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->showDialogInner(I)V

    goto :goto_1

    .line 245
    :cond_5
    iget-object v6, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    .line 246
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 247
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_6

    .line 248
    const/16 v5, 0x36a

    .line 245
    :goto_2
    new-array v8, v9, [Landroid/util/Pair;

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 250
    new-instance v5, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$DisableChangerRunnable;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, p0, v6, v7, v9}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$DisableChangerRunnable;-><init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {v5}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 249
    :cond_6
    const/16 v5, 0x36b

    goto :goto_2

    .line 253
    :cond_7
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-nez v5, :cond_8

    .line 254
    invoke-virtual {p0, v2, v7, v9}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 256
    :cond_8
    invoke-virtual {p0, v2, v9, v9}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 258
    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_9
    const v5, 0x7f0a00af

    if-ne v1, v5, :cond_1

    .line 260
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_a

    .line 262
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 261
    invoke-static {v5, v6}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    .line 264
    :cond_a
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->showDialogInner(I)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->stopListeningToPackageRemove()V

    .line 208
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->release()V

    .line 209
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 339
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->refreshUi()Z

    .line 309
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 324
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->pause()V

    .line 203
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->resume()V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFinishing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 190
    const-string/jumbo v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserId:I

    .line 189
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    .line 191
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 192
    const-string/jumbo v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserId:I

    .line 191
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->setIntentAndFinish(Z)V

    .line 198
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 304
    return-void
.end method

.method refreshUi()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 627
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 628
    return v8

    .line 630
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->retrieveAppEntry()V

    .line 631
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v7, :cond_2

    .line 632
    :cond_1
    return v8

    .line 635
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v1, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 637
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 638
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "size":I
    :goto_0
    if-ge v2, v6, :cond_4

    .line 639
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 640
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 641
    .local v0, "activityPkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 644
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 645
    .local v4, "metadata":Landroid/os/Bundle;
    if-eqz v4, :cond_3

    .line 646
    const-string/jumbo v7, "android.app.home.alternate"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 647
    .local v3, "metaPkg":Ljava/lang/String;
    invoke-direct {p0, v3, v0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 648
    iget-object v7, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 638
    .end local v3    # "metaPkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 653
    .end local v0    # "activityPkg":Ljava/lang/String;
    .end local v4    # "metadata":Landroid/os/Bundle;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->updateUninstallButton()V

    .line 654
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->updateForceStopButton()V

    .line 656
    const/4 v7, 0x1

    return v7
.end method

.method retrieveAppEntry()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 343
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 344
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 347
    const v3, 0x401240

    .line 346
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 352
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "AppButtonsPrefCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception when retrieving package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    iput-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_0

    .line 358
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iput-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_0
.end method

.method uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->stopListeningToPackageRemove()V

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 515
    .local v0, "packageUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 516
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 518
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    .line 519
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 518
    const/4 v4, 0x0

    new-array v4, v4, [Landroid/util/Pair;

    .line 519
    const/16 v5, 0x368

    .line 518
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 520
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mFragment:Landroid/app/Fragment;

    iget v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mRequestUninstall:I

    invoke-virtual {v2, v1, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 521
    iput-boolean p3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDisableAfterUninstall:Z

    .line 522
    return-void
.end method

.method updateForceStopButton()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 478
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const-string/jumbo v0, "AppButtonsPrefCtl"

    const-string/jumbo v2, "User can\'t force stop device admin"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {p0, v6}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->updateForceStopButtonInner(Z)V

    .line 498
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 485
    const-string/jumbo v0, "AppButtonsPrefCtl"

    const-string/jumbo v2, "App is not explicitly stopped"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->updateForceStopButtonInner(Z)V

    goto :goto_0

    .line 488
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 489
    const-string/jumbo v2, "package"

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 488
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 490
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string/jumbo v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    const-string/jumbo v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 493
    const-string/jumbo v0, "AppButtonsPrefCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending broadcast to query restart status for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 494
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 493
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 496
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    .line 495
    invoke-virtual/range {v0 .. v8}, Lcom/android/settings/SettingsActivity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method updateForceStopButtonInner(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 508
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 506
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method updateUninstallButton()V
    .locals 6

    .prologue
    .line 364
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    const/4 v3, 0x1

    .line 365
    .local v3, "isBundled":Z
    :goto_0
    const/4 v1, 0x1

    .line 366
    .local v1, "enabled":Z
    if-eqz v3, :cond_a

    .line 367
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->handleDisableable(Landroid/widget/Button;)Z

    move-result v1

    .line 378
    .end local v1    # "enabled":Z
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    const/4 v1, 0x0

    .line 385
    :cond_1
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->isProfileOrDeviceOwner(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 386
    const/4 v1, 0x0

    .line 390
    :cond_2
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 391
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 390
    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 392
    const/4 v1, 0x0

    .line 396
    :cond_3
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 397
    const/4 v1, 0x0

    .line 406
    :cond_4
    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 407
    if-eqz v3, :cond_b

    .line 408
    const/4 v1, 0x0

    .line 424
    :cond_5
    :goto_2
    iget-boolean v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    if-eqz v4, :cond_6

    .line 425
    const/4 v1, 0x0

    .line 428
    :cond_6
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->isFallbackPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 429
    const/4 v1, 0x0

    .line 432
    :cond_7
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 433
    if-eqz v1, :cond_8

    .line 435
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    :cond_8
    return-void

    .line 364
    .end local v3    # "isBundled":Z
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "isBundled":Z
    goto :goto_0

    .line 369
    .restart local v1    # "enabled":Z
    :cond_a
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-nez v4, :cond_0

    .line 370
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 373
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 410
    .end local v1    # "enabled":Z
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 412
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    if-nez v0, :cond_d

    .line 415
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_c

    const/4 v1, 0x1

    .restart local v1    # "enabled":Z
    goto :goto_2

    .end local v1    # "enabled":Z
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_2

    .line 419
    .end local v1    # "enabled":Z
    :cond_d
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v1, v4, 0x1

    .local v1, "enabled":Z
    goto :goto_2
.end method
