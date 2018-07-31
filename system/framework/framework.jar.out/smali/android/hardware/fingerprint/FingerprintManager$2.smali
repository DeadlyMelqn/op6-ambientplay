.class Landroid/hardware/fingerprint/FingerprintManager$2;
.super Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/FingerprintManager;->addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;

.field final synthetic val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field final synthetic val$powerManager:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->val$powerManager:Landroid/os/PowerManager;

    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    .line 891
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback$Stub;-><init>()V

    .line 1
    return-void
.end method

.method static synthetic lambda$-android_hardware_fingerprint_FingerprintManager$2_34279(Landroid/os/PowerManager$WakeLock;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
    .locals 1
    .param p0, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p1, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    .prologue
    .line 902
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;->onLockoutReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    .line 903
    :catchall_0
    move-exception v0

    .line 904
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 903
    throw v0
.end method


# virtual methods
.method public onLockoutReset(JLandroid/os/IRemoteCallback;)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "serverCallback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 897
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->val$powerManager:Landroid/os/PowerManager;

    .line 898
    const-string/jumbo v2, "lockoutResetCallback"

    const/4 v3, 0x1

    .line 897
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 899
    .local v0, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 900
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get4(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/hardware/fingerprint/-$Lambda$mAn4tgSaQL9G4z96dzSedXu3vvs;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    invoke-direct {v2, v0, v3}, Landroid/hardware/fingerprint/-$Lambda$mAn4tgSaQL9G4z96dzSedXu3vvs;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    invoke-interface {p3, v4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 910
    return-void

    .line 907
    .end local v0    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v1

    .line 908
    invoke-interface {p3, v4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 907
    throw v1
.end method
