.class final Lcom/android/server/policy/LegacyGlobalActions$RestartAction;
.super Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;
.source "LegacyGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/LegacyGlobalActions$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RestartAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$RestartAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    .line 388
    const v0, 0x10804bd

    const v1, 0x1040243

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;-><init>(II)V

    .line 389
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$RestartAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/LegacyGlobalActions;
    .param p2, "-this1"    # Lcom/android/server/policy/LegacyGlobalActions$RestartAction;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions$RestartAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 393
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$RestartAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get4(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 394
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$RestartAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get13(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    .line 396
    return v3

    .line 398
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onPress()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$RestartAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get13(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot(Z)V

    .line 414
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x1

    return v0
.end method
