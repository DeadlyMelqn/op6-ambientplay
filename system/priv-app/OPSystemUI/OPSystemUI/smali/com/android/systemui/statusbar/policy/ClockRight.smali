.class public Lcom/android/systemui/statusbar/policy/ClockRight;
.super Lcom/android/systemui/statusbar/policy/Clock;
.source "ClockRight.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ClockRight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ClockRight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setTextSize()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/Utils;->getStatusBarFontSize(Landroid/content/Context;)F

    move-result v0

    .local v0, "textSize":F
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setTextSize(IF)V

    return-void
.end method

.method public updateClockVisibility()V
    .locals 4

    .prologue
    .line 217
    iget v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockPosition:I

    const v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    .line 218
    :goto_0
    const-class v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    const-string/jumbo v3, "clock"

    invoke-interface {v2, v3, v1}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconVisibility(Ljava/lang/String;Z)V

    .line 219
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 220
    .local v0, "visibility":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockRight;->setTextSize()V

    return-void

    .line 217
    .end local v0    # "visibility":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "visible":Z
    goto :goto_0

    .line 219
    .end local v1    # "visible":Z
    :cond_1
    const/16 v0, 0x8

    .restart local v0    # "visibility":I
    goto :goto_1
.end method
