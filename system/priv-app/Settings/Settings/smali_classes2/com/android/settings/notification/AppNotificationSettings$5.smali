.class Lcom/android/settings/notification/AppNotificationSettings$5;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/AppNotificationSettings;->setupBadge()V
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
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 267
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 268
    .local v0, "value":Z
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-nez v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v2, v2, Lcom/android/settings/notification/AppNotificationSettings;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget v3, v3, Lcom/android/settings/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/notification/NotificationBackend;->setShowBadge(Ljava/lang/String;IZ)Z

    .line 275
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 272
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 273
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v2, v2, Lcom/android/settings/notification/AppNotificationSettings;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget v3, v3, Lcom/android/settings/notification/AppNotificationSettings;->mUid:I

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v4, v4, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    goto :goto_0
.end method
