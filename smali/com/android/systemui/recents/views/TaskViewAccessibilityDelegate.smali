.class public Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "TaskViewAccessibilityDelegate.java"


# instance fields
.field protected final mActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 7
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    const v6, 0x7f0a002c

    const v5, 0x7f0a002b

    const v4, 0x7f0a002a

    .line 48
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 46
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    .line 49
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 50
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 52
    const v3, 0x7f11040c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-direct {v2, v6, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 54
    const v3, 0x7f11040a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-direct {v2, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 56
    const v3, 0x7f11040b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-direct {v2, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    return-void
.end method

.method private simulateDragIntoMultiwindow(Lcom/android/systemui/recents/model/TaskStack$DockState;)V
    .locals 7
    .param p1, "dockState"    # Lcom/android/systemui/recents/model/TaskStack$DockState;

    .prologue
    const/4 v6, 0x0

    .line 94
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 95
    .local v0, "orientation":I
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 96
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 95
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Point;Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 97
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {v2, v3, v4, p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 98
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 62
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 62
    if-eqz v2, :cond_3

    .line 64
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v1

    .line 66
    .local v1, "dockStates":[Lcom/android/systemui/recents/model/TaskStack$DockState;
    const/4 v2, 0x0

    array-length v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 67
    .local v0, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    sget-object v2, Lcom/android/systemui/recents/model/TaskStack$DockState;->TOP:Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-ne v0, v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v5, 0x7f0a002c

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 66
    :cond_0
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 69
    :cond_1
    sget-object v2, Lcom/android/systemui/recents/model/TaskStack$DockState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-ne v0, v2, :cond_2

    .line 70
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v5, 0x7f0a002a

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    .line 71
    :cond_2
    sget-object v2, Lcom/android/systemui/recents/model/TaskStack$DockState;->RIGHT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-ne v0, v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v5, 0x7f0a002b

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    .line 76
    .end local v0    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v1    # "dockStates":[Lcom/android/systemui/recents/model/TaskStack$DockState;
    :cond_3
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const v0, 0x7f0a002c

    if-ne p2, v0, :cond_0

    .line 81
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->TOP:Lcom/android/systemui/recents/model/TaskStack$DockState;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->simulateDragIntoMultiwindow(Lcom/android/systemui/recents/model/TaskStack$DockState;)V

    .line 89
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 82
    :cond_0
    const v0, 0x7f0a002a

    if-ne p2, v0, :cond_1

    .line 83
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->simulateDragIntoMultiwindow(Lcom/android/systemui/recents/model/TaskStack$DockState;)V

    goto :goto_0

    .line 84
    :cond_1
    const v0, 0x7f0a002b

    if-ne p2, v0, :cond_2

    .line 85
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->RIGHT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;->simulateDragIntoMultiwindow(Lcom/android/systemui/recents/model/TaskStack$DockState;)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
