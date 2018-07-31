.class public Landroid/app/ActivityManager$StackId;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackId"
.end annotation


# static fields
.field public static final ASSISTANT_STACK_ID:I = 0x6

.field public static final DOCKED_STACK_ID:I = 0x3

.field public static final FIRST_DYNAMIC_STACK_ID:I = 0x7

.field public static final FIRST_STATIC_STACK_ID:I = 0x0

.field public static final FREEFORM_WORKSPACE_STACK_ID:I = 0x2

.field public static final FULLSCREEN_WORKSPACE_STACK_ID:I = 0x1

.field public static final HOME_STACK_ID:I = 0x0

.field public static final INVALID_STACK_ID:I = -0x1

.field public static final LAST_STATIC_STACK_ID:I = 0x6

.field public static final PINNED_STACK_ID:I = 0x4

.field public static final RECENTS_STACK_ID:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowTopTaskToReturnHome(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 877
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canReceiveKeys(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 848
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canSpecifyOrientation(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    .line 949
    if-eqz p0, :cond_0

    .line 950
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    .line 949
    :cond_0
    :goto_0
    return v0

    .line 951
    :cond_1
    if-eq p0, v0, :cond_0

    .line 952
    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    .line 953
    invoke-static {p0}, Landroid/app/ActivityManager$StackId;->isDynamicStack(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static hasMovementAnimations(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 944
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasWindowDecor(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 743
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasWindowShadow(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    .line 736
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAllowedOverLockscreen(I)Z
    .locals 3
    .param p0, "stackId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 855
    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 856
    :cond_1
    const/4 v2, 0x6

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isAllowedToEnterPictureInPicture(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x0

    .line 864
    if-eqz p0, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    .line 865
    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    .line 864
    :cond_0
    return v0
.end method

.method public static isAlwaysOnTop(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 869
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBackdropToTranslucentActivity(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    .line 826
    if-eq p0, v0, :cond_0

    .line 827
    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    .line 826
    :cond_0
    :goto_0
    return v0

    .line 827
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDynamicStack(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 728
    const/4 v0, 0x7

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDynamicStacksVisibleBehindAllowed(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    .line 763
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHomeOrRecentsStack(I)Z
    .locals 3
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 929
    if-eqz p0, :cond_0

    const/4 v2, 0x5

    if-ne p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isMultiWindowStack(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    .line 921
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 922
    :cond_1
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isResizeableByDockedStack(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x0

    .line 779
    invoke-static {p0}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 780
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    .line 779
    :cond_0
    return v0
.end method

.method public static isStackAffectedByDragResizing(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x0

    .line 797
    invoke-static {p0}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 798
    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    .line 797
    :cond_0
    return v0
.end method

.method public static isStaticStack(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x0

    .line 724
    if-ltz p0, :cond_0

    const/4 v1, 0x6

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isTaskResizeAllowed(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 751
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTaskResizeableByDockedStack(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x0

    .line 788
    invoke-static {p0}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 789
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 790
    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    .line 788
    :cond_0
    return v0
.end method

.method public static keepFocusInStackIfPossible(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    .line 771
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 772
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 771
    :cond_0
    :goto_0
    return v0

    .line 772
    :cond_1
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static keepVisibleDeadAppWindowOnScreen(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 893
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normallyFullscreenWindows(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x0

    .line 911
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 912
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    .line 911
    :cond_0
    return v0
.end method

.method public static persistTaskBounds(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 756
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replaceWindowsOnTaskMove(II)Z
    .locals 2
    .param p0, "sourceStackId"    # I
    .param p1, "targetStackId"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 807
    if-eq p0, v1, :cond_0

    .line 808
    if-ne p1, v1, :cond_1

    .line 807
    :cond_0
    :goto_0
    return v0

    .line 808
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resizeStackWithLaunchBounds(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 885
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tasksAreFloating(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    .line 817
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 818
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 817
    :cond_0
    :goto_0
    return v0

    .line 818
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useAnimationSpecForAppTransition(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    .line 837
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 838
    if-ne p0, v0, :cond_1

    .line 837
    :cond_0
    :goto_0
    return v0

    .line 839
    :cond_1
    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    .line 840
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 841
    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useWindowFrameForBackdrop(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    .line 901
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static windowsAreScaleable(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 937
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
