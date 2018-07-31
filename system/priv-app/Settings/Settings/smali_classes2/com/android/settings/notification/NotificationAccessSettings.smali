.class public Lcom/android/settings/notification/NotificationAccessSettings;
.super Lcom/android/settings/utils/ManagedServiceSettings;
.source "NotificationAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;
    }
.end annotation


# static fields
.field private static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/NotificationAccessSettings;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/NotificationAccessSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "parent"    # Lcom/android/settings/notification/NotificationAccessSettings;
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings;->disable(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->TAG:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/android/settings/notification/NotificationAccessSettings;->getNotificationListenerConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/utils/ManagedServiceSettings;-><init>()V

    return-void
.end method

.method private static disable(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V
    .locals 2
    .param p0, "parent"    # Lcom/android/settings/notification/NotificationAccessSettings;
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    .line 113
    new-instance v0, Lcom/android/settings/notification/NotificationAccessSettings$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings$1;-><init>(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method private static getNotificationListenerConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config;-><init>()V

    .line 48
    .local v0, "c":Lcom/android/settings/utils/ManagedServiceSettings$Config;
    sget-object v1, Lcom/android/settings/notification/NotificationAccessSettings;->TAG:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "enabled_notification_listeners"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    .line 50
    const-string/jumbo v1, "android.service.notification.NotificationListenerService"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 51
    const-string/jumbo v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 52
    const-string/jumbo v1, "notification listener"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    .line 53
    const v1, 0x7f0f0f97

    iput v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogTitle:I

    .line 54
    const v1, 0x7f0f0f98

    iput v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogSummary:I

    .line 55
    const v1, 0x7f0f0f96

    iput v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->emptyText:I

    .line 56
    return-object v0
.end method


# virtual methods
.method protected enable(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    .line 101
    return-void
.end method

.method protected getConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0xb3

    return v0
.end method

.method protected isServiceEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    const/16 v0, 0x308

    .line 107
    .local v0, "logCategory":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 109
    return-void

    .line 106
    .end local v0    # "logCategory":I
    :cond_0
    const/16 v0, 0x309

    .restart local v0    # "logCategory":I
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings;->onCreate(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method protected setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/settings/notification/NotificationAccessSettings;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 72
    if-nez p3, :cond_1

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings;->isServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    return v1

    .line 77
    :cond_0
    new-instance v0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;-><init>()V

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;Landroid/app/Fragment;)Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "friendlydialog"

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 80
    return v3

    .line 82
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings;->isServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    return v1

    .line 86
    :cond_2
    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>()V

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;Landroid/app/Fragment;)Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 89
    return v3
.end method
