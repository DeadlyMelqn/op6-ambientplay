.class final Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;
.super Ljava/lang/Object;
.source "UiAutomation.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$this$0:Landroid/app/UiAutomation;


# direct methods
.method constructor <init>(Landroid/app/UiAutomation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public init(ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "connectionId"    # I
    .param p2, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 1106
    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v0}, Landroid/app/UiAutomation;->-get1(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1107
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v0, p1}, Landroid/app/UiAutomation;->-set0(Landroid/app/UiAutomation;I)I

    .line 1108
    iget-object v0, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v0}, Landroid/app/UiAutomation;->-get1(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1110
    return-void

    .line 1106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onAccessibilityButtonAvailabilityChanged(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 1183
    return-void
.end method

.method public onAccessibilityButtonClicked()V
    .locals 0

    .prologue
    .line 1178
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1130
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->-get1(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1131
    :try_start_0
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/app/UiAutomation;->-set1(Landroid/app/UiAutomation;J)J

    .line 1132
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->-get3(Landroid/app/UiAutomation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1133
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->-get0(Landroid/app/UiAutomation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    :cond_0
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->-get1(Landroid/app/UiAutomation;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1138
    iget-object v1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/app/UiAutomation;

    invoke-static {v1}, Landroid/app/UiAutomation;->-get2(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;

    move-result-object v0

    .line 1139
    .local v0, "listener":Landroid/app/UiAutomation$OnAccessibilityEventListener;
    if-eqz v0, :cond_1

    .line 1140
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/UiAutomation$OnAccessibilityEventListener;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1142
    :cond_1
    return-void

    .line 1130
    .end local v0    # "listener":Landroid/app/UiAutomation$OnAccessibilityEventListener;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onFingerprintCapturingGesturesChanged(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 1168
    return-void
.end method

.method public onFingerprintGesture(I)V
    .locals 0
    .param p1, "gesture"    # I

    .prologue
    .line 1173
    return-void
.end method

.method public onGesture(I)Z
    .locals 1
    .param p1, "gestureId"    # I

    .prologue
    .line 1125
    const/4 v0, 0x0

    return v0
.end method

.method public onInterrupt()V
    .locals 0

    .prologue
    .line 1120
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1146
    const/4 v0, 0x0

    return v0
.end method

.method public onMagnificationChanged(Landroid/graphics/Region;FFF)V
    .locals 0
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 1153
    return-void
.end method

.method public onPerformGestureResult(IZ)V
    .locals 0
    .param p1, "sequence"    # I
    .param p2, "completedSuccessfully"    # Z

    .prologue
    .line 1163
    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    .prologue
    .line 1115
    return-void
.end method

.method public onSoftKeyboardShowModeChanged(I)V
    .locals 0
    .param p1, "showMode"    # I

    .prologue
    .line 1158
    return-void
.end method
