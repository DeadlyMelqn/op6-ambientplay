.class Lcom/google/android/systemui/OpaLayout$1;
.super Ljava/lang/Object;
.source "OpaLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/OpaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/OpaLayout;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/systemui/OpaLayout;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout$1;->this$0:Lcom/google/android/systemui/OpaLayout;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 108
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$1;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {v0}, Lcom/google/android/systemui/OpaLayout;->-get2(Lcom/google/android/systemui/OpaLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$1;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-virtual {v0}, Lcom/google/android/systemui/OpaLayout;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$1;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-virtual {v0}, Lcom/google/android/systemui/OpaLayout;->performLongClick()Z

    .line 113
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$1;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {v0, v3}, Lcom/google/android/systemui/OpaLayout;->-set1(Lcom/google/android/systemui/OpaLayout;Z)Z

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$1;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {v0}, Lcom/google/android/systemui/OpaLayout;->-get3(Lcom/google/android/systemui/OpaLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$1;->this$0:Lcom/google/android/systemui/OpaLayout;

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/OpaLayout;->sendEvent(II)V

    .line 116
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$1;->this$0:Lcom/google/android/systemui/OpaLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/OpaLayout;->sendAccessibilityEvent(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$1;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {v0, v3}, Lcom/google/android/systemui/OpaLayout;->-set1(Lcom/google/android/systemui/OpaLayout;Z)Z

    goto :goto_0
.end method
