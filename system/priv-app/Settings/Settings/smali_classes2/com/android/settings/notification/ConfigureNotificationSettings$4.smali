.class Lcom/android/settings/notification/ConfigureNotificationSettings$4;
.super Ljava/lang/Object;
.source "ConfigureNotificationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ConfigureNotificationSettings;->initLockscreenNotificationsForProfile()V
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
    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$4;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 303
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 304
    .local v2, "val":I
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$4;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-get2(Lcom/android/settings/notification/ConfigureNotificationSettings;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 305
    return v5

    .line 308
    :cond_0
    const v3, 0x7f0f0f84

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .line 310
    .local v0, "enabled":Z
    :goto_0
    const v3, 0x7f0f0f82

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    .line 311
    .local v1, "show":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$4;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-wrap0(Lcom/android/settings/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    .line 312
    const-string/jumbo v7, "lock_screen_allow_private_notifications"

    .line 313
    if-eqz v1, :cond_4

    move v3, v4

    :goto_2
    iget-object v8, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$4;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v8}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-get3(Lcom/android/settings/notification/ConfigureNotificationSettings;)I

    move-result v8

    .line 311
    invoke-static {v6, v7, v3, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 315
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$4;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-wrap0(Lcom/android/settings/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    .line 316
    const-string/jumbo v7, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_5

    move v3, v4

    :goto_3
    const/16 v8, 0x3e7

    .line 315
    invoke-static {v6, v7, v3, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 318
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$4;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-wrap0(Lcom/android/settings/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 319
    const-string/jumbo v6, "lock_screen_show_notifications"

    .line 320
    if-eqz v0, :cond_1

    move v5, v4

    :cond_1
    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$4;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v7}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-get3(Lcom/android/settings/notification/ConfigureNotificationSettings;)I

    move-result v7

    .line 318
    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 321
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$4;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v3, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-set1(Lcom/android/settings/notification/ConfigureNotificationSettings;I)I

    .line 322
    return v4

    .line 308
    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 310
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "show":Z
    goto :goto_1

    :cond_4
    move v3, v5

    .line 313
    goto :goto_2

    :cond_5
    move v3, v5

    .line 316
    goto :goto_3
.end method
