.class public Lcom/android/settings/notification/NotificationAccessConfirmationActivity;
.super Landroid/app/Activity;
.source "NotificationAccessConfirmationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "NotificationAccessConfirmationActivity"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mNm:Landroid/app/NotificationManager;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private onAllow()V
    .locals 6

    .prologue
    .line 98
    const-string/jumbo v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 100
    .local v1, "requiredPermission":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mComponentName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 101
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    const-string/jumbo v3, "NotificationAccessConfirmationActivity"

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " lacks permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-void

    .line 106
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "NotificationAccessConfirmationActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to get service info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    return-void

    .line 111
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mNm:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mComponentName:Landroid/content/ComponentName;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->finish()V

    .line 114
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->finish()V

    .line 124
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->finish()V

    .line 133
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 118
    invoke-static {p0, p1}, Lcom/android/internal/app/AlertActivity;->dispatchPopulateAccessibilityEvent(Landroid/app/Activity;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_settings_notification_NotificationAccessConfirmationActivity_2896(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "a"    # Landroid/content/DialogInterface;
    .param p2, "b"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->onAllow()V

    return-void
.end method

.method synthetic lambda$-com_android_settings_notification_NotificationAccessConfirmationActivity_3011(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "a"    # Landroid/content/DialogInterface;
    .param p2, "b"    # I

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->cancel()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string/jumbo v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mNm:Landroid/app/NotificationManager;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "component_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    iput-object v2, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mComponentName:Landroid/content/ComponentName;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    const/16 v4, -0x2710

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mUserId:I

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "package_title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "pkgTitle":Ljava/lang/String;
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    new-array v2, v6, [Ljava/lang/Object;

    .line 70
    aput-object v1, v2, v5

    .line 69
    const v3, 0x7f0f0f97

    .line 68
    invoke-virtual {p0, v3, v2}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 71
    new-array v2, v6, [Ljava/lang/Object;

    .line 73
    aput-object v1, v2, v5

    .line 72
    const v3, 0x7f0f0f98

    .line 71
    invoke-virtual {p0, v3, v2}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 74
    const v2, 0x7f0f05e4

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 75
    new-instance v2, Lcom/android/settings/notification/-$Lambda$9_P3HidOwCg552YlaGTwWrqXGwI;

    invoke-direct {v2, v5, p0}, Lcom/android/settings/notification/-$Lambda$9_P3HidOwCg552YlaGTwWrqXGwI;-><init>(BLjava/lang/Object;)V

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    const v2, 0x7f0f05e5

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 77
    new-instance v2, Lcom/android/settings/notification/-$Lambda$9_P3HidOwCg552YlaGTwWrqXGwI;

    invoke-direct {v2, v6, p0}, Lcom/android/settings/notification/-$Lambda$9_P3HidOwCg552YlaGTwWrqXGwI;-><init>(BLjava/lang/Object;)V

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 78
    invoke-static {p0, p0, v2}, Lcom/android/internal/app/AlertController;->create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/app/AlertController;->installContent(Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 81
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 93
    const/high16 v1, 0x80000

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 87
    const/high16 v1, 0x80000

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 88
    return-void
.end method
