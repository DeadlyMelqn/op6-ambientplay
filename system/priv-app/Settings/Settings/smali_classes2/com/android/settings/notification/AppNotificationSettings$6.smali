.class Lcom/android/settings/notification/AppNotificationSettings$6;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/AppNotificationSettings;->setupBlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/AppNotificationSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    .line 290
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-boolean v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mShowLegacyChannelConfig:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_0

    .line 291
    if-eqz p2, :cond_1

    const/16 v0, -0x3e8

    .line 292
    .local v0, "importance":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v3, v1, Lcom/android/settings/notification/AppNotificationSettings;->mImportanceToggle:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 293
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 294
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 295
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v3, v3, Lcom/android/settings/notification/AppNotificationSettings;->mPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget v4, v4, Lcom/android/settings/notification/AppNotificationSettings;->mUid:I

    iget-object v5, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v5, v5, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 297
    .end local v0    # "importance":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v3, v3, Lcom/android/settings/notification/AppNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget v4, v4, Lcom/android/settings/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v1, v3, v4, p2}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    .line 298
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iput-boolean v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 299
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/AppNotificationSettings;->updateDependents(Z)V

    .line 300
    return-void

    .line 291
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "importance":I
    goto :goto_0

    .line 292
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
