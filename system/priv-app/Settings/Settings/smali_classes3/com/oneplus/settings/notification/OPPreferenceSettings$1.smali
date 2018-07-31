.class Lcom/oneplus/settings/notification/OPPreferenceSettings$1;
.super Landroid/database/ContentObserver;
.source "OPPreferenceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPPreferenceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPPreferenceSettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/notification/OPPreferenceSettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$1;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    .line 83
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 89
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$1;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-wrap0(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dnd_mode_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 90
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$1;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-get0(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings$1;->this$0:Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->-get0(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 93
    :cond_0
    return-void

    .line 89
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method
