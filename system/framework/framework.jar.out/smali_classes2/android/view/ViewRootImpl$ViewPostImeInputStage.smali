.class final Landroid/view/ViewRootImpl$ViewPostImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewPostImeInputStage"
.end annotation


# static fields
.field private static final OEM_SMART_SCREEN_CAPTURE:Ljava/lang/String; = "oem_acc_sensor_three_finger"


# instance fields
.field private mIsGestureScreenshotEnabled:Z

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    .prologue
    .line 4839
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 4843
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 4844
    return-void
.end method

.method private maybeUpdatePointerIcon(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 5371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 5373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 5376
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v2}, Landroid/view/ViewRootImpl;->-set5(Landroid/view/ViewRootImpl;I)I

    .line 5379
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 5380
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-wrap4(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 5382
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v2}, Landroid/view/ViewRootImpl;->-set5(Landroid/view/ViewRootImpl;I)I

    .line 5386
    :cond_2
    return-void
.end method

.method private performFocusNavigation(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4875
    const/4 v0, 0x0

    .line 4876
    .local v0, "direction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 4905
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 4906
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 4907
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 4908
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    .line 4909
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_3

    if-eq v2, v1, :cond_3

    .line 4913
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 4914
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 4915
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    .line 4916
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 4915
    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4917
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    .line 4918
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 4917
    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4920
    :cond_1
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4921
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 4923
    return v5

    .line 4878
    .end local v1    # "focused":Landroid/view/View;
    .end local v2    # "v":Landroid/view/View;
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4879
    const/16 v0, 0x11

    goto :goto_0

    .line 4883
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4884
    const/16 v0, 0x42

    goto :goto_0

    .line 4888
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4889
    const/16 v0, 0x21

    goto :goto_0

    .line 4893
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4894
    const/16 v0, 0x82

    goto :goto_0

    .line 4898
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4899
    const/4 v0, 0x2

    goto :goto_0

    .line 4900
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4901
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 4928
    .restart local v1    # "focused":Landroid/view/View;
    .restart local v2    # "v":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v1, v0}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4929
    return v5

    .line 4932
    .end local v2    # "v":Landroid/view/View;
    :cond_4
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4933
    return v5

    .line 4937
    .end local v1    # "focused":Landroid/view/View;
    :cond_5
    return v6

    .line 4876
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private performKeyboardGroupNavigation(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4941
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 4942
    .local v1, "focused":Landroid/view/View;
    if-nez v1, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4943
    return v5

    .line 4945
    :cond_0
    if-nez v1, :cond_3

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v4, p1}, Landroid/view/ViewRootImpl;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4950
    .local v0, "cluster":Landroid/view/View;
    :goto_0
    move v2, p1

    .line 4951
    .local v2, "realDirection":I
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    if-ne p1, v5, :cond_2

    .line 4952
    :cond_1
    const/16 v2, 0x82

    .line 4955
    :cond_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4957
    invoke-virtual {v0}, Landroid/view/View;->restoreFocusNotInCluster()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4958
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 4959
    return v5

    .line 4946
    .end local v0    # "cluster":Landroid/view/View;
    .end local v2    # "realDirection":I
    :cond_3
    invoke-virtual {v1, v4, p1}, Landroid/view/View;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "cluster":Landroid/view/View;
    goto :goto_0

    .line 4962
    .restart local v2    # "realDirection":I
    :cond_4
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v4, p1}, Landroid/view/ViewRootImpl;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4965
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4966
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 4967
    return v5

    .line 4970
    :cond_6
    const/4 v3, 0x0

    return v3
.end method

.method private processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 5404
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 5407
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5408
    const/4 v1, 0x1

    return v1

    .line 5410
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 7
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4974
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    .line 4977
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4978
    return v5

    .line 4981
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4982
    return v6

    .line 4985
    :cond_1
    const/4 v1, 0x0

    .line 4987
    .local v1, "groupNavigationDirection":I
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 4988
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2

    .line 4989
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    const/high16 v3, 0x10000

    invoke-static {v2, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4990
    const/4 v1, 0x2

    .line 4998
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 4999
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 4998
    if-eqz v2, :cond_5

    .line 5000
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 5001
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 4998
    if-eqz v2, :cond_5

    .line 5002
    if-nez v1, :cond_5

    .line 5003
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5004
    return v5

    .line 4991
    :cond_3
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    .line 4992
    const v3, 0x10001

    .line 4991
    invoke-static {v2, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4993
    const/4 v1, 0x1

    goto :goto_0

    .line 5006
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5007
    return v6

    .line 5012
    :cond_5
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v2, v0}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5013
    return v5

    .line 5015
    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5016
    return v6

    .line 5020
    :cond_7
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_9

    .line 5021
    if-eqz v1, :cond_8

    .line 5022
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->performKeyboardGroupNavigation(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5023
    return v5

    .line 5026
    :cond_8
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->performFocusNavigation(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5027
    return v5

    .line 5031
    :cond_9
    return v4
.end method

.method private processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 26
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 5035
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v6, Landroid/view/MotionEvent;

    .line 5039
    .local v6, "event":Landroid/view/MotionEvent;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0xd

    const/16 v23, 0x0

    aput v22, v21, v23

    invoke-static/range {v21 .. v21}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 5041
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 5044
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 5045
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v24

    sub-long v22, v22, v24

    const-wide/16 v24, 0x1f4

    cmp-long v21, v22, v24

    if-gez v21, :cond_0

    .line 5048
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string/jumbo v22, "oem_acc_sensor_three_finger"

    const/16 v23, 0x0

    .line 5047
    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_3

    const/16 v21, 0x1

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->mIsGestureScreenshotEnabled:Z

    .line 5049
    const-string/jumbo v21, "ViewRootImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Gesture Screenshot Enabled = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->mIsGestureScreenshotEnabled:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5055
    :cond_0
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 5056
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 5058
    :cond_1
    :goto_1
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->mIsGestureScreenshotEnabled:Z

    .line 5062
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->mIsGestureScreenshotEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mIsMultiTouchGame:Z

    move/from16 v21, v0

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_5

    .line 5063
    move-object v14, v6

    .line 5064
    .local v14, "newEvent":Landroid/view/MotionEvent;
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5065
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    .line 5066
    const-string/jumbo v21, "ViewRootImpl"

    const-string/jumbo v22, "Gesture Screenshot triggered, ignore event"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5067
    const/16 v21, 0x1

    return v21

    .line 5047
    .end local v14    # "newEvent":Landroid/view/MotionEvent;
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 5057
    :cond_4
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 5076
    :cond_5
    sget-boolean v21, Landroid/view/ViewRootImpl;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v21, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get8(Landroid/view/ViewRootImpl;)Z

    move-result v21

    if-eqz v21, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get10(Landroid/view/ViewRootImpl;)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get11(Landroid/view/ViewRootImpl;)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_2b

    .line 5077
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 5078
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 5079
    .local v4, "action":I
    const/16 v17, 0x0

    .line 5080
    .local v17, "rotation":I
    const/4 v11, 0x0

    .line 5081
    .local v11, "isLandscape":Z
    const/4 v15, 0x0

    .line 5083
    .local v15, "raw":F
    if-eqz v4, :cond_6

    .line 5084
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get6(Landroid/view/ViewRootImpl;)Z

    move-result v21

    .line 5083
    if-nez v21, :cond_6

    .line 5084
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get7(Landroid/view/ViewRootImpl;)Z

    move-result v21

    .line 5083
    if-eqz v21, :cond_7

    .line 5085
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/Display;->getRotation()I

    move-result v17

    .line 5086
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    .line 5087
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/4 v11, 0x1

    .line 5089
    :goto_2
    sget-boolean v21, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v21, :cond_7

    .line 5090
    const-string/jumbo v21, "ViewRootImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[GESTURE_BUTTON] View: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5091
    const-string/jumbo v21, "ViewRootImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[GESTURE_BUTTON] Motion: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5092
    const-string/jumbo v21, "ViewRootImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[GESTURE_BUTTON] Rotation: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5093
    const-string/jumbo v21, "ViewRootImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[GESTURE_BUTTON] Zone: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/ViewRootImpl;->-get9(Landroid/view/ViewRootImpl;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5094
    const-string/jumbo v21, "ViewRootImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[GESTURE_BUTTON] mCheckForGestureButton: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/ViewRootImpl;->-get6(Landroid/view/ViewRootImpl;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5098
    :cond_7
    packed-switch v4, :pswitch_data_0

    .line 5337
    .end local v4    # "action":I
    .end local v11    # "isLandscape":Z
    .end local v15    # "raw":F
    .end local v17    # "rotation":I
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    .line 5338
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    .line 5341
    const/4 v7, 0x0

    .line 5343
    .local v7, "handled":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 5344
    .local v7, "handled":Z
    sget-boolean v21, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v21, :cond_9

    .line 5345
    const-string/jumbo v21, "ViewRootImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[GESTURE_BUTTON] dispatch event: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", handled="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5351
    .end local v7    # "handled":Z
    :cond_9
    :goto_4
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 5352
    .restart local v4    # "action":I
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v4, v0, :cond_36

    .line 5353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mHaveMoveEvent:Z

    .line 5358
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->maybeUpdatePointerIcon(Landroid/view/MotionEvent;)V

    .line 5359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->-wrap11(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V

    .line 5360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    .line 5361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    move/from16 v21, v0

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_b

    .line 5362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    .line 5363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 5364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInputImmediately()V

    .line 5367
    :cond_b
    if-eqz v7, :cond_37

    const/16 v21, 0x1

    :goto_6
    return v21

    .line 5086
    .restart local v11    # "isLandscape":Z
    .restart local v15    # "raw":F
    .restart local v17    # "rotation":I
    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 5087
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 5100
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set1(Landroid/view/ViewRootImpl;Z)Z

    .line 5101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set2(Landroid/view/ViewRootImpl;Z)Z

    .line 5102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set7(Landroid/view/ViewRootImpl;Z)Z

    .line 5103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get4(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 5105
    if-eqz v11, :cond_11

    .line 5106
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    .line 5111
    :goto_7
    const/4 v8, 0x0

    .line 5113
    .local v8, "hit":Z
    if-eqz v17, :cond_e

    .line 5114
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 5115
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/view/ViewRootImpl;->-get22(Landroid/view/ViewRootImpl;)I

    move-result v22

    add-int/lit8 v22, v22, -0x32

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set4(Landroid/view/ViewRootImpl;I)I

    .line 5116
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get9(Landroid/view/ViewRootImpl;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v15, v21

    if-lez v21, :cond_12

    const/4 v8, 0x1

    .line 5123
    :goto_8
    if-eqz v8, :cond_8

    .line 5124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set1(Landroid/view/ViewRootImpl;Z)Z

    .line 5125
    sget-boolean v21, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v21, :cond_f

    .line 5126
    const-string/jumbo v21, "ViewRootImpl"

    const-string/jumbo v22, "[GESTURE_BUTTON] Hit Gesture Region !"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5129
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawX()F

    move-result v22

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set8(Landroid/view/ViewRootImpl;F)F

    .line 5130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set9(Landroid/view/ViewRootImpl;F)F

    .line 5132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get4(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-static {v6}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5133
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x15be

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 5135
    .local v13, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set7(Landroid/view/ViewRootImpl;Z)Z

    .line 5136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/view/ViewRootImpl;->-get3()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5137
    sget-boolean v21, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v21, :cond_10

    .line 5138
    const-string/jumbo v21, "ViewRootImpl"

    const-string/jumbo v22, "[GESTURE_BUTTON] sendMessages for MSG_GESTURE_MOTION_DOWN "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5140
    :cond_10
    const/16 v21, 0x1

    return v21

    .line 5108
    .end local v8    # "hit":Z
    .end local v13    # "msg":Landroid/os/Message;
    :cond_11
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    goto/16 :goto_7

    .line 5116
    .restart local v8    # "hit":Z
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 5119
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x32

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set4(Landroid/view/ViewRootImpl;I)I

    .line 5120
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get9(Landroid/view/ViewRootImpl;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v15, v21

    if-gez v21, :cond_14

    const/4 v8, 0x1

    goto/16 :goto_8

    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 5144
    .end local v8    # "hit":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get6(Landroid/view/ViewRootImpl;)Z

    move-result v21

    if-eqz v21, :cond_26

    .line 5146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get4(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-static {v6}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5148
    const/16 v20, 0x0

    .line 5149
    .local v20, "trigger":Z
    const/16 v18, 0x0

    .line 5150
    .local v18, "swipeTimeoSlow":Z
    const/16 v16, 0x0

    .line 5152
    .local v16, "reachDistance":Z
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v24

    sub-long v22, v22, v24

    const-wide/16 v24, 0x190

    cmp-long v21, v22, v24

    if-lez v21, :cond_15

    .line 5153
    const/16 v18, 0x1

    .line 5156
    :cond_15
    invoke-static {}, Landroid/view/ViewRootImpl;->-get1()I

    move-result v19

    .line 5158
    .local v19, "threshold":I
    if-eqz v17, :cond_16

    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    .line 5159
    :cond_16
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawX()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/view/ViewRootImpl;->-get15(Landroid/view/ViewRootImpl;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_17

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawX()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/view/ViewRootImpl;->-get15(Landroid/view/ViewRootImpl;)I

    move-result v22

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_17

    .line 5161
    invoke-static {}, Landroid/view/ViewRootImpl;->-get2()I

    move-result v19

    .line 5164
    :cond_17
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/view/ViewRootImpl;->-get19(Landroid/view/ViewRootImpl;)F

    move-result v22

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_18

    .line 5165
    const/16 v16, 0x1

    .line 5179
    :cond_18
    :goto_9
    xor-int/lit8 v21, v18, 0x1

    and-int v20, v21, v16

    .line 5181
    .local v20, "trigger":Z
    if-eqz v20, :cond_20

    .line 5183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set2(Landroid/view/ViewRootImpl;Z)Z

    .line 5185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x15be

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 5186
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x15be

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 5188
    :cond_19
    sget-boolean v21, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v21, :cond_1a

    .line 5189
    const-string/jumbo v21, "ViewRootImpl"

    const-string/jumbo v22, "[GESTURE_BUTTON] trigger!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5192
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set1(Landroid/view/ViewRootImpl;Z)Z

    .line 5193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set7(Landroid/view/ViewRootImpl;Z)Z

    .line 5226
    :cond_1b
    :goto_a
    sget-boolean v21, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v21, :cond_1c

    .line 5227
    const-string/jumbo v21, "ViewRootImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[GESTURE_BUTTON] reachDistance = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", swipeTimeoSlow = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5229
    :cond_1c
    const/16 v21, 0x1

    return v21

    .line 5167
    .local v20, "trigger":Z
    :cond_1d
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_1e

    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 5168
    :cond_1e
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/view/ViewRootImpl;->-get15(Landroid/view/ViewRootImpl;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_1f

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/view/ViewRootImpl;->-get15(Landroid/view/ViewRootImpl;)I

    move-result v22

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_1f

    .line 5170
    invoke-static {}, Landroid/view/ViewRootImpl;->-get2()I

    move-result v19

    .line 5173
    :cond_1f
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawX()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/view/ViewRootImpl;->-get18(Landroid/view/ViewRootImpl;)F

    move-result v22

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_18

    .line 5174
    const/16 v16, 0x1

    goto/16 :goto_9

    .line 5195
    .local v20, "trigger":Z
    :cond_20
    if-nez v16, :cond_21

    if-eqz v18, :cond_25

    .line 5197
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x15be

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_22

    .line 5198
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x15be

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 5200
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get17(Landroid/view/ViewRootImpl;)Z

    move-result v21

    if-nez v21, :cond_24

    .line 5203
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get4(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_24

    .line 5204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get4(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/MotionEvent;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    .line 5205
    .local v12, "ishandled":Z
    sget-boolean v21, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v21, :cond_23

    .line 5206
    const-string/jumbo v21, "ViewRootImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[GESTURE_BUTTON] 2 dispatch mBackupEventList: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 5207
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/ViewRootImpl;->-get4(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v23

    .line 5206
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 5207
    const-string/jumbo v23, ", handled="

    .line 5206
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5203
    :cond_23
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 5210
    .end local v12    # "ishandled":Z
    :catch_0
    move-exception v5

    .line 5211
    .local v5, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v21, "ViewRootImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mView does not exist, so discard the remaining points. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5215
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .end local v9    # "i":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set1(Landroid/view/ViewRootImpl;Z)Z

    .line 5216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set2(Landroid/view/ViewRootImpl;Z)Z

    .line 5217
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set7(Landroid/view/ViewRootImpl;Z)Z

    goto/16 :goto_a

    .line 5218
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x15be

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 5220
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x15be

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 5221
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x15be

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 5222
    .restart local v13    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set7(Landroid/view/ViewRootImpl;Z)Z

    .line 5223
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/view/ViewRootImpl;->-get3()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_a

    .line 5231
    .end local v13    # "msg":Landroid/os/Message;
    .end local v16    # "reachDistance":Z
    .end local v18    # "swipeTimeoSlow":Z
    .end local v19    # "threshold":I
    .end local v20    # "trigger":Z
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get7(Landroid/view/ViewRootImpl;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 5232
    const/16 v21, 0x1

    return v21

    .line 5237
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get7(Landroid/view/ViewRootImpl;)Z

    move-result v21

    if-eqz v21, :cond_27

    .line 5239
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set1(Landroid/view/ViewRootImpl;Z)Z

    .line 5240
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set2(Landroid/view/ViewRootImpl;Z)Z

    .line 5241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set7(Landroid/view/ViewRootImpl;Z)Z

    .line 5242
    const/16 v21, 0x1

    return v21

    .line 5243
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get6(Landroid/view/ViewRootImpl;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 5245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x15be

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_28

    .line 5246
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x15be

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 5248
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get17(Landroid/view/ViewRootImpl;)Z

    move-result v21

    if-nez v21, :cond_2a

    .line 5251
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get4(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_2a

    .line 5252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get4(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/MotionEvent;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    .line 5253
    .restart local v12    # "ishandled":Z
    sget-boolean v21, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v21, :cond_29

    .line 5254
    const-string/jumbo v21, "ViewRootImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[GESTURE_BUTTON] 3 dispatch mBackupEventList: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 5255
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/ViewRootImpl;->-get4(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;

    move-result-object v23

    .line 5254
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 5255
    const-string/jumbo v23, ", handled="

    .line 5254
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5251
    :cond_29
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 5258
    .end local v12    # "ishandled":Z
    :catch_1
    move-exception v5

    .line 5259
    .restart local v5    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v21, "ViewRootImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mView does not exist, so discard the remaining points. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5262
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .end local v9    # "i":I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set7(Landroid/view/ViewRootImpl;Z)Z

    .line 5263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set1(Landroid/view/ViewRootImpl;Z)Z

    .line 5264
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set2(Landroid/view/ViewRootImpl;Z)Z

    goto/16 :goto_3

    .line 5274
    .end local v4    # "action":I
    .end local v11    # "isLandscape":Z
    .end local v15    # "raw":F
    .end local v17    # "rotation":I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get12(Landroid/view/ViewRootImpl;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 5275
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    if-eqz v21, :cond_2f

    const/4 v10, 0x1

    .line 5277
    .local v10, "isFullScreen":Z
    :goto_d
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    if-eqz v10, :cond_8

    .line 5278
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 5279
    .restart local v4    # "action":I
    const/16 v17, 0x0

    .line 5280
    .restart local v17    # "rotation":I
    const/4 v11, 0x0

    .line 5281
    .restart local v11    # "isLandscape":Z
    const/4 v15, 0x0

    .line 5283
    .restart local v15    # "raw":F
    if-nez v4, :cond_2c

    .line 5284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/Display;->getRotation()I

    move-result v17

    .line 5285
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_30

    .line 5286
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_31

    const/4 v11, 0x1

    .line 5290
    :cond_2c
    :goto_e
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_3

    .line 5292
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set0(Landroid/view/ViewRootImpl;Z)Z

    .line 5294
    if-eqz v11, :cond_32

    .line 5295
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    .line 5300
    :goto_f
    const/4 v8, 0x0

    .line 5302
    .restart local v8    # "hit":Z
    if-eqz v17, :cond_2d

    .line 5303
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_34

    .line 5304
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/view/ViewRootImpl;->-get22(Landroid/view/ViewRootImpl;)I

    move-result v22

    add-int/lit8 v22, v22, -0x32

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set4(Landroid/view/ViewRootImpl;I)I

    .line 5305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get9(Landroid/view/ViewRootImpl;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v15, v21

    if-lez v21, :cond_33

    const/4 v8, 0x1

    .line 5312
    :goto_10
    if-eqz v8, :cond_8

    .line 5313
    invoke-static {}, Landroid/view/ViewRootImpl;->-get0()Z

    move-result v21

    if-eqz v21, :cond_2e

    .line 5314
    const-string/jumbo v21, "ViewRootImpl"

    const-string/jumbo v22, "Hit the edge and fullscreen mode, start to dismiss the move events"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5316
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set0(Landroid/view/ViewRootImpl;Z)Z

    goto/16 :goto_3

    .line 5275
    .end local v4    # "action":I
    .end local v8    # "hit":Z
    .end local v10    # "isFullScreen":Z
    .end local v11    # "isLandscape":Z
    .end local v15    # "raw":F
    .end local v17    # "rotation":I
    :cond_2f
    const/4 v10, 0x0

    .restart local v10    # "isFullScreen":Z
    goto/16 :goto_d

    .line 5285
    .restart local v4    # "action":I
    .restart local v11    # "isLandscape":Z
    .restart local v15    # "raw":F
    .restart local v17    # "rotation":I
    :cond_30
    const/4 v11, 0x1

    goto :goto_e

    .line 5286
    :cond_31
    const/4 v11, 0x0

    goto :goto_e

    .line 5297
    :cond_32
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    goto :goto_f

    .line 5305
    .restart local v8    # "hit":Z
    :cond_33
    const/4 v8, 0x0

    goto :goto_10

    .line 5308
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x32

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set4(Landroid/view/ViewRootImpl;I)I

    .line 5309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get9(Landroid/view/ViewRootImpl;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v15, v21

    if-gez v21, :cond_35

    const/4 v8, 0x1

    goto :goto_10

    :cond_35
    const/4 v8, 0x0

    goto :goto_10

    .line 5320
    .end local v8    # "hit":Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get5(Landroid/view/ViewRootImpl;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 5321
    const/16 v21, 0x1

    return v21

    .line 5325
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewRootImpl;->-get5(Landroid/view/ViewRootImpl;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 5326
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/ViewRootImpl;->-set0(Landroid/view/ViewRootImpl;Z)Z

    goto/16 :goto_3

    .line 5347
    .end local v4    # "action":I
    .end local v10    # "isFullScreen":Z
    .end local v11    # "isLandscape":Z
    .end local v15    # "raw":F
    .end local v17    # "rotation":I
    :catch_2
    move-exception v5

    .line 5348
    .restart local v5    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v21, "ViewRootImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mView does not exist, so discard the remaining points. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 5354
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "action":I
    :cond_36
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_a

    .line 5355
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mHaveMoveEvent:Z

    .line 5356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsPerfLockAcquired:Z

    goto/16 :goto_5

    .line 5367
    :cond_37
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 5098
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 5290
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 3
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v2, 0x1

    .line 5389
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 5391
    .local v0, "event":Landroid/view/MotionEvent;
    const v1, 0x20004

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5392
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->hasPointerCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5393
    :cond_0
    return v2

    .line 5397
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5398
    return v2

    .line 5400
    :cond_2
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 4864
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-eqz v0, :cond_0

    .line 4865
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    .line 4864
    if-eqz v0, :cond_0

    .line 4866
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    .line 4864
    if-eqz v0, :cond_0

    .line 4867
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->isTerminalInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 4864
    if-eqz v0, :cond_0

    .line 4868
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    .line 4869
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 4871
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 4872
    return-void
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 4848
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_0

    .line 4849
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    .line 4851
    :cond_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    .line 4852
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 4853
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    .line 4854
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 4855
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    .line 4857
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1
.end method
