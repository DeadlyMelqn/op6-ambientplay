.class final Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowsForAccessibilityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
    .param p1, "window"    # Landroid/view/WindowInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->populateReportedWindow(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 4262
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTypeForWindowManagerWindowType(I)I
    .locals 1
    .param p1, "windowType"    # I

    .prologue
    .line 4317
    sparse-switch p1, :sswitch_data_0

    .line 4369
    const/4 v0, -0x1

    return v0

    .line 4330
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 4335
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 4357
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 4361
    :sswitch_3
    const/4 v0, 0x5

    return v0

    .line 4365
    :sswitch_4
    const/4 v0, 0x4

    return v0

    .line 4317
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3ed -> :sswitch_0
        0x7d0 -> :sswitch_2
        0x7d1 -> :sswitch_2
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_2
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_2
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_2
        0x7d9 -> :sswitch_2
        0x7da -> :sswitch_2
        0x7db -> :sswitch_1
        0x7dc -> :sswitch_1
        0x7de -> :sswitch_2
        0x7e1 -> :sswitch_2
        0x7e3 -> :sswitch_2
        0x7e4 -> :sswitch_2
        0x7e8 -> :sswitch_2
        0x7f0 -> :sswitch_4
        0x7f2 -> :sswitch_3
        0x7f4 -> :sswitch_2
        0x7f6 -> :sswitch_2
        0x8ff -> :sswitch_2
    .end sparse-switch
.end method

.method private populateReportedWindow(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 10
    .param p1, "window"    # Landroid/view/WindowInfo;

    .prologue
    const/4 v9, 0x0

    .line 4281
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v8, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-static {v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap15(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v6

    .line 4282
    .local v6, "windowId":I
    if-gez v6, :cond_0

    .line 4283
    return-object v9

    .line 4286
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v5

    .line 4288
    .local v5, "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    .line 4289
    iget v7, p1, Landroid/view/WindowInfo;->type:I

    invoke-direct {p0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->getTypeForWindowManagerWindowType(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    .line 4290
    iget v7, p1, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 4291
    iget-boolean v7, p1, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    .line 4292
    iget-object v7, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 4293
    iget-object v7, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 4294
    iget v7, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAnchorId(I)V

    .line 4295
    iget-boolean v7, p1, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setPictureInPicture(Z)V

    .line 4297
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v8, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-static {v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap15(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v4

    .line 4298
    .local v4, "parentId":I
    if-ltz v4, :cond_1

    .line 4299
    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    .line 4302
    :cond_1
    iget-object v7, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v7, :cond_3

    .line 4303
    iget-object v7, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 4304
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 4305
    iget-object v7, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 4306
    .local v2, "childToken":Landroid/os/IBinder;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v7, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap15(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v1

    .line 4307
    .local v1, "childId":I
    if-ltz v1, :cond_2

    .line 4308
    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    .line 4304
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4313
    .end local v0    # "childCount":I
    .end local v1    # "childId":I
    .end local v2    # "childToken":Landroid/os/IBinder;
    .end local v3    # "i":I
    :cond_3
    return-object v5
.end method


# virtual methods
.method public onWindowsForAccessibilityChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4267
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4273
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get14(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    .line 4276
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4278
    return-void

    .line 4267
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
