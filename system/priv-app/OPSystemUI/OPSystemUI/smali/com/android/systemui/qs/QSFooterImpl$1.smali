.class Lcom/android/systemui/qs/QSFooterImpl$1;
.super Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;
.source "QSFooterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSFooterImpl;->updateAnimator(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFooterImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFooterImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSFooterImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl$1;->this$0:Lcom/android/systemui/qs/QSFooterImpl;

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationAtStart()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl$1;->this$0:Lcom/android/systemui/qs/QSFooterImpl;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooterImpl;->-get0(Lcom/android/systemui/qs/QSFooterImpl;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    return-void
.end method

.method public onAnimationStarted()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl$1;->this$0:Lcom/android/systemui/qs/QSFooterImpl;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooterImpl;->-get0(Lcom/android/systemui/qs/QSFooterImpl;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    return-void
.end method
