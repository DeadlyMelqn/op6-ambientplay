.class Lcom/android/systemui/pip/tv/PipControlsView$3;
.super Ljava/lang/Object;
.source "PipControlsView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipControlsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipControlsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/tv/PipControlsView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView$3;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 96
    if-eqz p2, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView$3;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    check-cast p1, Lcom/android/systemui/pip/tv/PipControlButtonView;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/android/systemui/pip/tv/PipControlsView;->-set0(Lcom/android/systemui/pip/tv/PipControlsView;Lcom/android/systemui/pip/tv/PipControlButtonView;)Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView$3;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipControlsView;->-get0(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipControlButtonView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView$3;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/pip/tv/PipControlsView;->-set0(Lcom/android/systemui/pip/tv/PipControlsView;Lcom/android/systemui/pip/tv/PipControlButtonView;)Lcom/android/systemui/pip/tv/PipControlButtonView;

    goto :goto_0
.end method
