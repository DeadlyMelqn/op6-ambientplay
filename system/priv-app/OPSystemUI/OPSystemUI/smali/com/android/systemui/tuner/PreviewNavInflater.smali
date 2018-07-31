.class public Lcom/android/systemui/tuner/PreviewNavInflater;
.super Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;
.source "PreviewNavInflater.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method private isValidLayout(Ljava/lang/String;)Z
    .locals 7
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 58
    if-nez p1, :cond_0

    .line 59
    return v3

    .line 61
    :cond_0
    const/4 v2, 0x0

    .line 62
    .local v2, "separatorCount":I
    const/4 v1, 0x0

    .line 63
    .local v1, "lastGravitySeparator":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const-string/jumbo v6, ";"

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_3

    .line 65
    if-eqz v0, :cond_1

    sub-int v5, v0, v1

    if-ne v5, v3, :cond_2

    .line 66
    :cond_1
    return v4

    .line 68
    :cond_2
    move v1, v0

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 63
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_4
    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    if-eq v5, v3, :cond_5

    :goto_1
    return v3

    :cond_5
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onAttachedToWindow()V

    .line 35
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 36
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string/jumbo v0, "sysui_nav_bar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-direct {p0, p2}, Lcom/android/systemui/tuner/PreviewNavInflater;->isValidLayout(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
