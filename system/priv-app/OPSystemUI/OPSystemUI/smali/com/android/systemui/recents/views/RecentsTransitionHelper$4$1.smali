.class Lcom/android/systemui/recents/views/RecentsTransitionHelper$4$1;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;

.field final synthetic val$listener:Landroid/app/ActivityOptions$OnAnimationStartedListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4$1;->this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4$1;->val$listener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4$1;->val$listener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-interface {v0}, Landroid/app/ActivityOptions$OnAnimationStartedListener;->onAnimationStarted()V

    .line 216
    return-void
.end method
