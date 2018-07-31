.class Lcom/android/server/policy/OemGestureButton$1;
.super Ljava/lang/Object;
.source "OemGestureButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemGestureButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemGestureButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v0, p2}, Lcom/android/server/policy/OemGestureButton;->-wrap3(Lcom/android/server/policy/OemGestureButton;Landroid/view/MotionEvent;)V

    .line 704
    const/4 v0, 0x1

    return v0
.end method
