.class Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/SimChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimChangeBroadcastReceiver"
.end annotation


# instance fields
.field private final mGenerationNumber:I

.field private mSimNotLoadedSeen:Z

.field final synthetic this$0:Lcom/android/server/connectivity/tethering/SimChangeListener;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/tethering/SimChangeListener;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/connectivity/tethering/SimChangeListener;
    .param p2, "generationNumber"    # I

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;->this$0:Lcom/android/server/connectivity/tethering/SimChangeListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    .line 96
    iput p2, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;->mGenerationNumber:I

    .line 97
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 101
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;->this$0:Lcom/android/server/connectivity/tethering/SimChangeListener;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/SimChangeListener;->-get2(Lcom/android/server/connectivity/tethering/SimChangeListener;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 107
    .local v0, "currentGenerationNumber":I
    iget v2, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;->mGenerationNumber:I

    if-eq v2, v0, :cond_0

    return-void

    .line 109
    :cond_0
    const-string/jumbo v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "state":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/tethering/SimChangeListener;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got Sim changed to state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mSimNotLoadedSeen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 111
    iget-boolean v4, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;->this$0:Lcom/android/server/connectivity/tethering/SimChangeListener;

    invoke-static {v2, v1}, Lcom/android/server/connectivity/tethering/SimChangeListener;->-wrap0(Lcom/android/server/connectivity/tethering/SimChangeListener;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    .line 115
    return-void

    .line 118
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    if-eqz v2, :cond_2

    .line 119
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    .line 120
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;->this$0:Lcom/android/server/connectivity/tethering/SimChangeListener;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/SimChangeListener;->-get1(Lcom/android/server/connectivity/tethering/SimChangeListener;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 122
    :cond_2
    return-void
.end method
