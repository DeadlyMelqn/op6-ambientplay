.class Lcom/android/settings/notification/NotificationSettingsBase$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationSettingsBase;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    .line 500
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 503
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 505
    :cond_0
    invoke-static {}, Lcom/android/settings/notification/NotificationSettingsBase;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "NotifiSettingsBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") removed. Removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 506
    const-string/jumbo v3, "NotificationSettingsBase."

    .line 505
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {v1}, Lcom/android/settings/notification/NotificationSettingsBase;->onPackageRemoved()V

    .line 509
    :cond_2
    return-void
.end method