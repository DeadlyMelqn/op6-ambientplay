.class public Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/events/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatedEvent"
.end annotation


# instance fields
.field private final mTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 260
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;->mTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 263
    return-void
.end method


# virtual methods
.method public addPostAnimationCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;->mTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;->mTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    return-object v0
.end method

.method onPostDispatch()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;->mTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 288
    return-void
.end method

.method onPreDispatch()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;->mTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 283
    return-void
.end method
