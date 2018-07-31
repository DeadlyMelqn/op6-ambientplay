.class Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AssistDisclosure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;-><init>(Lcom/android/systemui/assist/AssistDisclosure;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCancelled:Z

.field final synthetic this$1:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;->this$1:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    .line 126
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;->mCancelled:Z

    .line 137
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;->mCancelled:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;->this$1:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    iget-object v0, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->this$0:Lcom/android/systemui/assist/AssistDisclosure;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistDisclosure;->-wrap0(Lcom/android/systemui/assist/AssistDisclosure;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;->mCancelled:Z

    .line 132
    return-void
.end method
