.class Lcom/android/systemui/recents/views/TaskStackView$9;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$event:Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskStackView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->val$event:Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    .line 2367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2371
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackView;->-get0(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->val$event:Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    iget-object v1, v1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    .line 2372
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->val$event:Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    invoke-virtual {v2}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v2

    .line 2371
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startNewStackScrollAnimation(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 2373
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->val$event:Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 2375
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->showDismissAllButton()V

    .line 2377
    return-void
.end method
