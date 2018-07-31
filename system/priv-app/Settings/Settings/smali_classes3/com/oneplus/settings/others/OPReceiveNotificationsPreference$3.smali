.class Lcom/oneplus/settings/others/OPReceiveNotificationsPreference$3;
.super Ljava/lang/Object;
.source "OPReceiveNotificationsPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference$3;->this$0:Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 90
    const-string/jumbo v2, "push.noti"

    if-eqz p2, :cond_0

    const-string/jumbo v1, "agree_click"

    :goto_0
    invoke-static {v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference$3;->this$0:Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;

    invoke-static {v1}, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;->-get0(Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 92
    const-string/jumbo v3, "oem_receive_notifications"

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 91
    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.push.action.SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "net.oneplus.push"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string/jumbo v1, "oem_receive_notifications"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference$3;->this$0:Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;

    invoke-static {v1}, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;->-get0(Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    return-void

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v1, "refuse_click"

    goto :goto_0

    .line 92
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
