.class Lcom/android/settings/notification/ZenModeAutomationSettings$3;
.super Lcom/android/settings/notification/ZenRuleNameDialog;
.source "ZenModeAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeAutomationSettings;->showNameRuleDialog(Lcom/android/settings/notification/ZenRuleInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

.field final synthetic val$ri:Lcom/android/settings/notification/ZenRuleInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/settings/notification/ZenRuleInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenModeAutomationSettings;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Ljava/lang/CharSequence;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$3;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iput-object p4, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$3;->val$ri:Lcom/android/settings/notification/ZenRuleInfo;

    .line 109
    invoke-direct {p0, p2, p3}, Lcom/android/settings/notification/ZenRuleNameDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;)V
    .locals 8
    .param p1, "ruleName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 112
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$3;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    const/16 v2, 0xad

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 113
    new-instance v0, Landroid/app/AutomaticZenRule;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$3;->val$ri:Lcom/android/settings/notification/ZenRuleInfo;

    iget-object v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    .line 114
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$3;->val$ri:Lcom/android/settings/notification/ZenRuleInfo;

    iget-object v3, v1, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    const/4 v4, 0x2

    .line 115
    const/4 v5, 0x1

    move-object v1, p1

    .line 113
    invoke-direct/range {v0 .. v5}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V

    .line 116
    .local v0, "rule":Landroid/app/AutomaticZenRule;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$3;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->addZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "savedRuleId":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$3;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$3;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$3;->val$ri:Lcom/android/settings/notification/ZenRuleInfo;

    iget-object v3, v3, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    invoke-static {v2, v3, v7, v6}, Lcom/android/settings/notification/ZenModeAutomationSettings;->-wrap1(Lcom/android/settings/notification/ZenModeAutomationSettings;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->startActivity(Landroid/content/Intent;)V

    .line 120
    :cond_0
    return-void
.end method
