.class Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction$1;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->promptExtendedRestart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onSettingConfirm(Ljava/lang/String;)V
    .locals 0
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    .line 475
    return-void
.end method

.method public onSettingDeny(Ljava/lang/String;)V
    .locals 1
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get7(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    .line 479
    return-void
.end method
