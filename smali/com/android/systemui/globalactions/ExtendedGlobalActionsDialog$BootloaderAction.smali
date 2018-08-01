.class Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$BootloaderAction;
.super Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;
.source "ExtendedGlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BootloaderAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$BootloaderAction;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .line 260
    const v0, 0x10804bf

    const v1, 0x1040222

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;-><init>(II)V

    .line 261
    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$BootloaderAction;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get7(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->rebootBootloader(Z)V

    .line 266
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    return v0
.end method
