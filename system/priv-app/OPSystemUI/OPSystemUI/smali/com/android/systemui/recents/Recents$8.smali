.class Lcom/android/systemui/recents/Recents$8;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/Recents;->onBusEvent(Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;

.field final synthetic val$event:Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/Recents;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$8;->this$0:Lcom/android/systemui/recents/Recents;

    iput-object p2, p0, Lcom/android/systemui/recents/Recents$8;->val$event:Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 804
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents$8;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v1}, Lcom/android/systemui/recents/Recents;->-get2(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object v1

    .line 805
    iget-object v2, p0, Lcom/android/systemui/recents/Recents$8;->val$event:Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;

    iget-boolean v2, v2, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;->waitingForTransitionStart:Z

    .line 804
    invoke-interface {v1, v2}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->setWaitingForTransitionStartEvent(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :goto_0
    return-void

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Recents"

    const-string/jumbo v2, "Callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
