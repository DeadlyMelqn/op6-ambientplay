.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RestartAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 459
    const v0, 0x10804be

    const v1, 0x104022a

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(II)V

    .line 460
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;
    .param p2, "-this1"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method

.method private extendedRestartEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 485
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get5(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 486
    const-string/jumbo v4, "extended_restart"

    .line 485
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 487
    .local v0, "enabled":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private promptExtendedRestart()V
    .locals 8

    .prologue
    .line 464
    new-instance v7, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;

    .line 465
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get5(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v0

    .line 464
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;-><init>(Landroid/content/Context;)V

    .line 467
    .local v7, "mSnackbarViewCreator":Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;->getSnackbarView()Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    move-result-object v0

    .line 468
    const-string/jumbo v1, "extended_restart"

    .line 470
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get5(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1101f5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 471
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get5(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f1101f4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 472
    new-instance v5, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;)V

    .line 469
    const/4 v2, 0x1

    .line 481
    const/4 v6, 0x0

    .line 466
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/settings/SettingConfirmationHelper;->prompt(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;Landroid/os/Handler;)V

    .line 482
    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 4

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->extendedRestartEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->promptExtendedRestart()V

    .line 500
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get9(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    move-result-object v0

    if-nez v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    new-instance v1, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get5(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get15(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    invoke-static {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set2(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get9(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get14(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get6(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->showDialog(ZZ)V

    goto :goto_0
.end method

.method public onPress()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get15(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->reboot(Z)V

    .line 516
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x1

    return v0
.end method
