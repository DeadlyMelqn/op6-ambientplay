.class final Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StackTransitionInfo"
.end annotation


# instance fields
.field private bindApplicationDelayMs:I

.field private currentTransitionProcessRunning:Z

.field private launchedActivity:Lcom/android/server/am/ActivityRecord;

.field private loggedStartingWindowDrawn:Z

.field private loggedWindowsDrawn:Z

.field private reason:I

.field private startResult:I

.field private startingWindowDelayMs:I

.field final synthetic this$0:Lcom/android/server/am/ActivityMetricsLogger;

.field private windowsDrawnDelayMs:I


# direct methods
.method static synthetic -get0(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .prologue
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->bindApplicationDelayMs:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->currentTransitionProcessRunning:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->loggedStartingWindowDrawn:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->loggedWindowsDrawn:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .prologue
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->reason:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .prologue
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->startResult:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .prologue
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->startingWindowDelayMs:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .prologue
    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->windowsDrawnDelayMs:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->bindApplicationDelayMs:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->currentTransitionProcessRunning:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    .param p1, "-value"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->loggedStartingWindowDrawn:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->loggedWindowsDrawn:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->reason:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->startResult:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->startingWindowDelayMs:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->windowsDrawnDelayMs:I

    return p1
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/ActivityMetricsLogger;

    .prologue
    const/4 v0, -0x1

    .line 84
    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->this$0:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->startingWindowDelayMs:I

    .line 90
    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->bindApplicationDelayMs:I

    .line 91
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->reason:I

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityMetricsLogger;
    .param p2, "-this1"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;-><init>(Lcom/android/server/am/ActivityMetricsLogger;)V

    return-void
.end method
