.class public Lcom/android/systemui/statusbar/policy/ClockCenter;
.super Lcom/android/systemui/statusbar/policy/Clock;
.source "ClockCenter.java"


# instance fields
.field private mClockVisibleByPolicy:Z

.field private mClockVisibleByUser:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ClockCenter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ClockCenter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ClockCenter;->mClockVisibleByPolicy:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ClockCenter;->mClockVisibleByUser:Z

    .line 42
    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 2
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 64
    const/high16 v1, 0x800000

    and-int/2addr v1, p1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 65
    .local v0, "clockVisibleByPolicy":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ClockCenter;->mClockVisibleByPolicy:Z

    if-eq v0, v1, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ClockCenter;->setClockVisibilityByPolicy(Z)V

    .line 68
    :cond_0
    return-void

    .line 64
    .end local v0    # "clockVisibleByPolicy":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "clockVisibleByPolicy":Z
    goto :goto_0
.end method

.method public setClockVisibilityByPolicy(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ClockCenter;->mClockVisibleByPolicy:Z

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockCenter;->updateClockVisibility()V

    .line 52
    return-void
.end method

.method protected updateClockVisibility()V
    .locals 4

    .prologue
    .line 55
    iget v2, p0, Lcom/android/systemui/statusbar/policy/ClockCenter;->mClockStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/ClockCenter;->mShowClock:Z

    if-eqz v2, :cond_0

    .line 56
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/ClockCenter;->mClockVisibleByPolicy:Z

    .line 55
    if-eqz v2, :cond_0

    .line 56
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ClockCenter;->mClockVisibleByUser:Z

    .line 57
    :goto_0
    const-class v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    const-string/jumbo v3, "center_clock"

    invoke-interface {v2, v3, v1}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconVisibility(Ljava/lang/String;Z)V

    .line 58
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 59
    .local v0, "visibility":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ClockCenter;->setVisibility(I)V

    .line 60
    return-void

    .line 55
    .end local v0    # "visibility":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "visible":Z
    goto :goto_0

    .line 58
    .end local v1    # "visible":Z
    :cond_1
    const/16 v0, 0x8

    .restart local v0    # "visibility":I
    goto :goto_1
.end method
