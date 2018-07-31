.class public Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionEventGenerator"
.end annotation


# static fields
.field private static sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .locals 3
    .param p0, "requiredCapacity"    # I

    .prologue
    .line 547
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    array-length v1, v1

    if-ge v1, p0, :cond_1

    .line 548
    :cond_0
    new-array v1, p0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    sput-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 549
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 550
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-direct {v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    aput-object v2, v1, v0

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    .end local v0    # "i":I
    :cond_1
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    return-object v1
.end method

.method public static getGestureStepsFromGestureDescription(Landroid/accessibilityservice/GestureDescription;I)Ljava/util/List;
    .locals 10
    .param p0, "description"    # Landroid/accessibilityservice/GestureDescription;
    .param p1, "sampleTimeMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accessibilityservice/GestureDescription;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v2, "gestureSteps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription;->getStrokeCount()I

    move-result v3

    invoke-static {v3}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getCurrentTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v1

    .line 528
    .local v1, "currentTouchPoints":[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    const/4 v0, 0x0

    .line 530
    .local v0, "currentTouchPointSize":I
    const-wide/16 v6, 0x0

    .line 531
    .local v6, "timeSinceGestureStart":J
    invoke-static {p0, v6, v7}, Landroid/accessibilityservice/GestureDescription;->-wrap1(Landroid/accessibilityservice/GestureDescription;J)J

    move-result-wide v4

    .line 532
    .local v4, "nextKeyPointTime":J
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-ltz v3, :cond_1

    .line 533
    if-nez v0, :cond_0

    move-wide v6, v4

    .line 535
    :goto_1
    invoke-static {p0, v6, v7, v1}, Landroid/accessibilityservice/GestureDescription;->-wrap0(Landroid/accessibilityservice/GestureDescription;J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I

    move-result v0

    .line 537
    new-instance v3, Landroid/accessibilityservice/GestureDescription$GestureStep;

    invoke-direct {v3, v6, v7, v0, v1}, Landroid/accessibilityservice/GestureDescription$GestureStep;-><init>(JI[Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    invoke-static {p0, v8, v9}, Landroid/accessibilityservice/GestureDescription;->-wrap1(Landroid/accessibilityservice/GestureDescription;J)J

    move-result-wide v4

    goto :goto_0

    .line 534
    :cond_0
    int-to-long v8, p1

    add-long/2addr v8, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_1

    .line 543
    :cond_1
    return-object v2
.end method
