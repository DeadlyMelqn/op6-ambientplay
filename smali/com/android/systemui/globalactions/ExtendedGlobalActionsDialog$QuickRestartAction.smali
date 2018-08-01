.class Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$QuickRestartAction;
.super Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;
.source "ExtendedGlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickRestartAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$QuickRestartAction;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .line 208
    const v0, 0x10804c0

    const v1, 0x1040228

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;-><init>(II)V

    .line 209
    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 4

    .prologue
    .line 217
    :try_start_0
    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 218
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Landroid/app/IActivityManager;->restart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0    # "am":Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ExtendedGlobalActionsDialog"

    const-string/jumbo v3, "failure trying to perform hot reboot"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method
