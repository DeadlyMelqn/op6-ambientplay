.class Lcom/android/systemui/recents/views/TaskStackView$6;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$tasks:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskStackView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$6;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackView$6;->val$tasks:Ljava/util/ArrayList;

    .line 2035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2039
    const-string/jumbo v3, "TaskStackView"

    const-string/jumbo v4, "handle removeAllTasks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$6;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/TaskStackView;->-get1(Lcom/android/systemui/recents/views/TaskStackView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/Utils;->isDeepCleanEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2041
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 2042
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->killAllRunningProcess()V

    .line 2047
    .end local v1    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$6;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView$6;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2048
    const v5, 0x7f1100db

    .line 2047
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2051
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$6;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/TaskStackView;->-get3(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/model/TaskStack;->removeAllTasks(Z)V

    .line 2052
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$6;->val$tasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2055
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$6;->val$tasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 2056
    .local v2, "t":Lcom/android/systemui/recents/model/Task;
    iget-boolean v3, v2, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-nez v3, :cond_1

    .line 2057
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    invoke-direct {v4, v2}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2052
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2062
    .end local v2    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$6;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x165

    invoke-static {v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 2063
    return-void
.end method
