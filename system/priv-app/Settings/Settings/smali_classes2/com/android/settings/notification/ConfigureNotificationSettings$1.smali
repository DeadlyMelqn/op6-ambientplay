.class Lcom/android/settings/notification/ConfigureNotificationSettings$1;
.super Ljava/lang/Object;
.source "ConfigureNotificationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ConfigureNotificationSettings;->initNotificationBadging()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ConfigureNotificationSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$1;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 136
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 137
    .local v0, "val":Z
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$1;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->hasMultiAppProfiles(Landroid/os/UserManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$1;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-get0(Lcom/android/settings/notification/ConfigureNotificationSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 139
    const-string/jumbo v5, "notification_badging"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    const/16 v6, 0x3e7

    .line 138
    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$1;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-get0(Lcom/android/settings/notification/ConfigureNotificationSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 142
    const-string/jumbo v4, "notification_badging"

    if-eqz v0, :cond_2

    .line 141
    :goto_1
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1

    :cond_1
    move v1, v3

    .line 139
    goto :goto_0

    :cond_2
    move v2, v3

    .line 142
    goto :goto_1
.end method
