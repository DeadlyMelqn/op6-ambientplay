.class Lcom/oneplus/aod/NotificationCustomViewWrapper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationCustomViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/NotificationCustomViewWrapper;->fadeGrayscale(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/NotificationCustomViewWrapper;

.field final synthetic val$dark:Z


# direct methods
.method constructor <init>(Lcom/oneplus/aod/NotificationCustomViewWrapper;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/NotificationCustomViewWrapper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper$2;->this$0:Lcom/oneplus/aod/NotificationCustomViewWrapper;

    iput-boolean p2, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper$2;->val$dark:Z

    .line 79
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper$2;->val$dark:Z

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper$2;->this$0:Lcom/oneplus/aod/NotificationCustomViewWrapper;

    iget-object v0, v0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 85
    :cond_0
    return-void
.end method
