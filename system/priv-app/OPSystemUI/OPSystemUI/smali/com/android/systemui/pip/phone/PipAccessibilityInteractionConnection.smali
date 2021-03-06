.class public Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;
.super Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.source "PipAccessibilityInteractionConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;
    }
.end annotation


# instance fields
.field private mAccessibilityNodeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;

.field private mHandler:Landroid/os/Handler;

.field private mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

.field private mTmpBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pip/phone/PipMotionHelper;Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;Landroid/os/Handler;)V
    .locals 1
    .param p1, "motionHelper"    # Lcom/android/systemui/pip/phone/PipMotionHelper;
    .param p2, "callbacks"    # Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTmpBounds:Landroid/graphics/Rect;

    .line 54
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    .line 56
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mCallbacks:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;

    .line 57
    return-void
.end method

.method private getNodeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    .line 186
    :cond_0
    invoke-static {}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->obtainRootAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 187
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 188
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    return-object v1
.end method

.method public static obtainRootAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 169
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 170
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    .line 171
    const/4 v1, -0x3

    .line 170
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSourceNodeId(JI)V

    .line 172
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 173
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 174
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 175
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 176
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setImportantForAccessibility(Z)V

    .line 177
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 178
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 179
    return-object v0
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "accessibilityNodeId"    # J
    .param p3, "interactiveRegion"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;
    .param p11, "args"    # Landroid/os/Bundle;

    .prologue
    .line 66
    :try_start_0
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->getNodeList()Ljava/util/List;

    move-result-object v1

    .line 65
    :goto_0
    invoke-interface {p5, v1, p4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_1
    return-void

    .line 67
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 138
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p6, v1, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 125
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p6, v1, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 150
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p6, v1, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 162
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p6, v1, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipAccessibilityInteractionConnection_3319()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mCallbacks:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;->onAccessibilityShowMenu()V

    return-void
.end method

.method public performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 9
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J

    .prologue
    .line 79
    const/4 v4, 0x0

    .line 80
    .local v4, "result":Z
    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v5, p1, v6

    if-nez v5, :cond_0

    .line 81
    sparse-switch p3, :sswitch_data_0

    .line 112
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p6, v4, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_1
    return-void

    .line 83
    :sswitch_0
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/pip/phone/-$Lambda$apc3PWlomUA_8Gv_LC2-DRbkZWo;

    const/4 v7, 0x0

    invoke-direct {v6, v7, p0}, Lcom/android/systemui/pip/phone/-$Lambda$apc3PWlomUA_8Gv_LC2-DRbkZWo;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    const/4 v4, 0x1

    .line 87
    goto :goto_0

    .line 89
    :sswitch_1
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dismissPip()V

    .line 90
    const/4 v4, 0x1

    .line 91
    goto :goto_0

    .line 94
    :sswitch_2
    const-string/jumbo v5, "ACTION_ARGUMENT_MOVE_WINDOW_X"

    .line 93
    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "newX":I
    const-string/jumbo v5, "ACTION_ARGUMENT_MOVE_WINDOW_Y"

    .line 95
    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 97
    .local v1, "newY":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 98
    .local v2, "pipBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 99
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 100
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/android/systemui/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;)V

    .line 101
    const/4 v4, 0x1

    .line 102
    goto :goto_0

    .line 104
    .end local v0    # "newX":I
    .end local v1    # "newY":I
    .end local v2    # "pipBounds":Landroid/graphics/Rect;
    :sswitch_3
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip()V

    .line 105
    const/4 v4, 0x1

    .line 106
    goto :goto_0

    .line 113
    :catch_0
    move-exception v3

    .local v3, "re":Landroid/os/RemoteException;
    goto :goto_1

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x40000 -> :sswitch_3
        0x100000 -> :sswitch_1
        0x1020042 -> :sswitch_2
    .end sparse-switch
.end method
