.class Lcom/android/settings/notification/ChannelNotificationSettings$6;
.super Ljava/lang/Object;
.source "ChannelNotificationSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ChannelNotificationSettings;->setupBlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ChannelNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ChannelNotificationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ChannelNotificationSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "importance":I
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-boolean v1, v1, Lcom/android/settings/notification/ChannelNotificationSettings;->mShowLegacyChannelConfig:Z

    if-eqz v1, :cond_2

    .line 261
    if-eqz p2, :cond_0

    const/16 v0, -0x3e8

    .line 262
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v4, v1, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportanceToggle:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 267
    :goto_2
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 268
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 269
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ChannelNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v4, v4, Lcom/android/settings/notification/ChannelNotificationSettings;->mPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget v5, v5, Lcom/android/settings/notification/ChannelNotificationSettings;->mUid:I

    iget-object v6, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v6, v6, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 270
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v4, v4, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-nez v4, :cond_4

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->updateDependents(Z)V

    .line 271
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 262
    goto :goto_1

    .line 264
    :cond_2
    if-eqz p2, :cond_3

    const/4 v0, 0x2

    .line 265
    :goto_4
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->-get1(Lcom/android/settings/notification/ChannelNotificationSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings$6;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-static {v4, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->-wrap0(Lcom/android/settings/notification/ChannelNotificationSettings;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 264
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    move v2, v3

    .line 270
    goto :goto_3
.end method
