.class Lcom/android/keyguard/KeyguardEsimArea$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardEsimArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardEsimArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardEsimArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardEsimArea;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardEsimArea;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardEsimArea$1;->this$0:Lcom/android/keyguard/KeyguardEsimArea;

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    const-string/jumbo v1, "com.android.keyguard.disable_esim"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEsimArea$1;->getResultCode()I

    move-result v0

    .line 52
    .local v0, "resultCode":I
    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v1, "KeyguardEsimArea"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error disabling esim, result code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v0    # "resultCode":I
    :cond_0
    return-void
.end method
