.class Lcom/android/settingslib/animation/AppearAnimationUtils$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppearAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settingslib/animation/AppearAnimationUtils;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/animation/AppearAnimationUtils;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->this$0:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iput-object p2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$endRunnable:Ljava/lang/Runnable;

    .line 212
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 216
    return-void
.end method
