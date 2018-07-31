.class Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NearestTouchDelegate"
.end annotation


# instance fields
.field private mInitialTouchTarget:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;)V
    .locals 0
    .param p1, "-this0"    # Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;

    .prologue
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>()V

    return-void
.end method

.method private findNearestChild(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 10
    .param p1, "v"    # Landroid/view/ViewGroup;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1070
    const/4 v0, 0x0

    .line 1071
    .local v0, "bestChild":Landroid/view/View;
    const v1, 0x7fffffff

    .line 1073
    .local v1, "bestDist":I
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .end local v0    # "bestChild":Landroid/view/View;
    .local v3, "count":I
    :goto_0
    if-ge v7, v3, :cond_1

    .line 1074
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1075
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int v4, p2, v8

    .line 1076
    .local v4, "dX":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int v5, p3, v8

    .line 1077
    .local v5, "dY":I
    mul-int v8, v4, v4

    mul-int v9, v5, v5

    add-int v6, v8, v9

    .line 1078
    .local v6, "dist":I
    if-le v1, v6, :cond_0

    .line 1079
    move-object v0, v2

    .line 1080
    .local v0, "bestChild":Landroid/view/View;
    move v1, v6

    .line 1073
    .end local v0    # "bestChild":Landroid/view/View;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1084
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "dX":I
    .end local v5    # "dY":I
    .end local v6    # "dist":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1040
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1041
    .local v0, "actionMasked":I
    if-nez v0, :cond_0

    .line 1042
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v5, p1

    .line 1043
    check-cast v5, Landroid/view/ViewGroup;

    .line 1044
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    .line 1043
    invoke-direct {p0, v5, v6, v7}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->findNearestChild(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    .line 1050
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    .line 1051
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_2

    .line 1052
    return v9

    .line 1046
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    iput-object v8, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    goto :goto_0

    .line 1055
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v3, v5

    .line 1056
    .local v3, "offsetX":F
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v4, v5

    .line 1057
    .local v4, "offsetY":F
    invoke-virtual {p2, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1058
    invoke-virtual {v1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1059
    .local v2, "handled":Z
    neg-float v5, v3

    neg-float v6, v4

    invoke-virtual {p2, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1061
    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    .line 1062
    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    .line 1063
    :cond_3
    iput-object v8, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    .line 1066
    :cond_4
    return v2
.end method
