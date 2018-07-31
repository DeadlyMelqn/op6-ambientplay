.class Lcom/oneplus/settings/others/OPSystemStabilityPreference$3;
.super Ljava/lang/Object;
.source "OPSystemStabilityPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/others/OPSystemStabilityPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/others/OPSystemStabilityPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/others/OPSystemStabilityPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/others/OPSystemStabilityPreference;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/others/OPSystemStabilityPreference$3;->this$0:Lcom/oneplus/settings/others/OPSystemStabilityPreference;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 92
    const-string/jumbo v1, "sys.stab"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "agree_click"

    :goto_0
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/others/OPSystemStabilityPreference$3;->this$0:Lcom/oneplus/settings/others/OPSystemStabilityPreference;

    invoke-static {v0}, Lcom/oneplus/settings/others/OPSystemStabilityPreference;->-get0(Lcom/oneplus/settings/others/OPSystemStabilityPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 95
    const-string/jumbo v2, "oem_join_stability_plan_settings"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 93
    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    return-void

    .line 92
    :cond_0
    const-string/jumbo v0, "refuse_click"

    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
