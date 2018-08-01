.class Lcom/android/keyguard/KeyguardUpdateMonitor$1;
.super Landroid/pocket/IPocketCallback$Stub;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 246
    invoke-direct {p0}, Landroid/pocket/IPocketCallback$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onStateChanged(ZI)V
    .locals 3
    .param p1, "isDeviceInPocket"    # Z
    .param p2, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "changed":Z
    if-nez p2, :cond_2

    .line 251
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get3(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v1

    if-eq p1, v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set2(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 253
    const/4 v0, 0x1

    .line 259
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get1(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 262
    :cond_1
    return-void

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get3(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v1

    if-eq p1, v1, :cond_3

    const/4 v0, 0x1

    .line 257
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set2(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    goto :goto_0

    .line 256
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
