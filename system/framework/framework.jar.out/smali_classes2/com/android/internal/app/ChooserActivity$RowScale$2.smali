.class Lcom/android/internal/app/ChooserActivity$RowScale$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$RowScale;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$RowScale;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$RowScale;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$RowScale;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RowScale$2;->this$1:Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 1258
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowScale$2;->this$1:Lcom/android/internal/app/ChooserActivity$RowScale;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->onAnimationEnd()V

    .line 1266
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowScale$2;->this$1:Lcom/android/internal/app/ChooserActivity$RowScale;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->onAnimationStart()V

    .line 1262
    return-void
.end method
