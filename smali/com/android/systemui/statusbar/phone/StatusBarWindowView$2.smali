.class Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 216
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->-get0(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 220
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "StatusBarWindowView"

    const-string/jumbo v2, "Gesture!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 226
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 224
    :cond_0
    const-string/jumbo v1, "StatusBarWindowView"

    const-string/jumbo v2, "getSystemService returned null PowerManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
