.class Lcom/android/settings/notification/ZenModeAutomationSettings$2;
.super Lcom/android/settings/notification/ZenRuleSelectionDialog;
.source "ZenModeAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeAutomationSettings;->showAddRuleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/content/Context;Lcom/android/settings/utils/ZenServiceListing;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenModeAutomationSettings;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Lcom/android/settings/utils/ZenServiceListing;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    .line 94
    invoke-direct {p0, p2, p3}, Lcom/android/settings/notification/ZenRuleSelectionDialog;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ZenServiceListing;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onExternalRuleSelected(Lcom/android/settings/notification/ZenRuleInfo;)V
    .locals 3
    .param p1, "ri"    # Lcom/android/settings/notification/ZenRuleInfo;

    .prologue
    .line 102
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p1, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public onSystemRuleSelected(Lcom/android/settings/notification/ZenRuleInfo;)V
    .locals 1
    .param p1, "ri"    # Lcom/android/settings/notification/ZenRuleInfo;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-static {v0, p1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->-wrap5(Lcom/android/settings/notification/ZenModeAutomationSettings;Lcom/android/settings/notification/ZenRuleInfo;)V

    .line 98
    return-void
.end method
