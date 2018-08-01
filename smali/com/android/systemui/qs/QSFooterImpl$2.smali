.class Lcom/android/systemui/qs/QSFooterImpl$2;
.super Ljava/lang/Object;
.source "QSFooterImpl.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSFooterImpl;->updateSettingsAnimator()V
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
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl$2;->this$0:Lcom/android/systemui/qs/QSFooterImpl;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
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
    .line 214
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl$2;->this$0:Lcom/android/systemui/qs/QSFooterImpl;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooterImpl;->-get1(Lcom/android/systemui/qs/QSFooterImpl;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl$2;->this$0:Lcom/android/systemui/qs/QSFooterImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSFooterImpl;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl$2;->this$0:Lcom/android/systemui/qs/QSFooterImpl;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooterImpl;->-get1(Lcom/android/systemui/qs/QSFooterImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 216
    return-void
.end method
