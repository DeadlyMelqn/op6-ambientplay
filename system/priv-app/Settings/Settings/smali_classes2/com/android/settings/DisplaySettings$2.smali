.class Lcom/android/settings/DisplaySettings$2;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DisplaySettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    .line 1384
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 1388
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "night_display_activated"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1389
    .local v0, "OPNightModeState":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "reading_mode_status"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 1390
    .local v1, "OPReadingModeState":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 1391
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v2}, Lcom/android/settings/DisplaySettings;->-get5(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1392
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v2}, Lcom/android/settings/DisplaySettings;->-get5(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v3}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f02b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1402
    :goto_2
    return-void

    .line 1388
    .end local v0    # "OPNightModeState":Z
    .end local v1    # "OPReadingModeState":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "OPNightModeState":Z
    goto :goto_0

    .line 1389
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "OPReadingModeState":Z
    goto :goto_1

    .line 1394
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings/DisplaySettings;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1395
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v2}, Lcom/android/settings/DisplaySettings;->-get5(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1396
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v2}, Lcom/android/settings/DisplaySettings;->-get5(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v3}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f03ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1398
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v2}, Lcom/android/settings/DisplaySettings;->-wrap9(Lcom/android/settings/DisplaySettings;)V

    .line 1399
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v2}, Lcom/android/settings/DisplaySettings;->-get5(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method
