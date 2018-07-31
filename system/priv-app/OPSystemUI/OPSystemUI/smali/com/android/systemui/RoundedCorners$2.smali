.class Lcom/android/systemui/RoundedCorners$2;
.super Ljava/lang/Object;
.source "RoundedCorners.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/RoundedCorners;->setupRounding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/RoundedCorners;


# direct methods
.method constructor <init>(Lcom/android/systemui/RoundedCorners;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/RoundedCorners;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/RoundedCorners$2;->this$0:Lcom/android/systemui/RoundedCorners;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const-wide/16 v2, 0x3e8

    const/high16 v1, 0x3f800000    # 1.0f

    .line 121
    iget-object v0, p0, Lcom/android/systemui/RoundedCorners$2;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v0}, Lcom/android/systemui/RoundedCorners;->-get1(Lcom/android/systemui/RoundedCorners;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/RoundedCorners$2;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v0}, Lcom/android/systemui/RoundedCorners;->-get1(Lcom/android/systemui/RoundedCorners;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/RoundedCorners$2;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v0}, Lcom/android/systemui/RoundedCorners;->-get0(Lcom/android/systemui/RoundedCorners;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 130
    return-void
.end method
