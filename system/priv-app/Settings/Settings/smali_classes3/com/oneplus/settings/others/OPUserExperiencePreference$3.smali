.class Lcom/oneplus/settings/others/OPUserExperiencePreference$3;
.super Ljava/lang/Object;
.source "OPUserExperiencePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/others/OPUserExperiencePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/others/OPUserExperiencePreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/others/OPUserExperiencePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/others/OPUserExperiencePreference;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/others/OPUserExperiencePreference$3;->this$0:Lcom/oneplus/settings/others/OPUserExperiencePreference;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x0

    .line 89
    iget-object v1, p0, Lcom/oneplus/settings/others/OPUserExperiencePreference$3;->this$0:Lcom/oneplus/settings/others/OPUserExperiencePreference;

    invoke-static {v1}, Lcom/oneplus/settings/others/OPUserExperiencePreference;->-get0(Lcom/oneplus/settings/others/OPUserExperiencePreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 91
    const-string/jumbo v3, "oem_join_user_plan_settings"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 89
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    const-string/jumbo v2, "user.experience"

    if-eqz p2, :cond_1

    const-string/jumbo v1, "agree_click"

    :goto_1
    invoke-static {v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz p2, :cond_2

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "INTENT_START_ODM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/oneplus/settings/others/OPUserExperiencePreference$3;->this$0:Lcom/oneplus/settings/others/OPUserExperiencePreference;

    invoke-static {v1}, Lcom/oneplus/settings/others/OPUserExperiencePreference;->-get0(Lcom/oneplus/settings/others/OPUserExperiencePreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 103
    :goto_2
    return-void

    .line 92
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 93
    :cond_1
    const-string/jumbo v1, "refuse_click"

    goto :goto_1

    .line 99
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "INTENT_STOP_ODM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/oneplus/settings/others/OPUserExperiencePreference$3;->this$0:Lcom/oneplus/settings/others/OPUserExperiencePreference;

    invoke-static {v1}, Lcom/oneplus/settings/others/OPUserExperiencePreference;->-get0(Lcom/oneplus/settings/others/OPUserExperiencePreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2
.end method
