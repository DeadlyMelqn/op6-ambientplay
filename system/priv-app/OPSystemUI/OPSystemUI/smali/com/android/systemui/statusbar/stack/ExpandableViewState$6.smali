.class Lcom/android/systemui/statusbar/stack/ExpandableViewState$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

.field final synthetic val$child:Lcom/android/systemui/statusbar/ExpandableView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$6;->this$0:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$6;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    .line 426
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$6;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f0a031a

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$6;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f0a0319

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$6;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f0a0318

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 432
    return-void
.end method
