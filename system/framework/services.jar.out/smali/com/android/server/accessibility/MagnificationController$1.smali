.class Lcom/android/server/accessibility/MagnificationController$1;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Landroid/view/WindowManagerInternal$MagnificationCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationController;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/MagnificationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/MagnificationController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$1;->this$0:Lcom/android/server/accessibility/MagnificationController;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onMagnificationRegionChanged(Landroid/graphics/Region;)V
    .locals 3
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 102
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 103
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 104
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$1;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationController;->-get0(Lcom/android/server/accessibility/MagnificationController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 105
    return-void
.end method

.method public onRectangleOnScreenRequested(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 109
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 110
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 111
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 112
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 113
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 114
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$1;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationController;->-get0(Lcom/android/server/accessibility/MagnificationController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$1;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->-get0(Lcom/android/server/accessibility/MagnificationController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    return-void
.end method

.method public onUserContextChanged()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$1;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->-get0(Lcom/android/server/accessibility/MagnificationController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    return-void
.end method