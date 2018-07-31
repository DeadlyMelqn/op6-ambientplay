.class public Lcom/oneplus/aod/clock/OPAnalogClock;
.super Landroid/widget/RelativeLayout;
.source "OPAnalogClock.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mHour:Landroid/widget/ImageView;

.field private mMin:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const-string/jumbo v0, "OPAnalogClock"

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPAnalogClock;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const-string/jumbo v0, "OPAnalogClock"

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPAnalogClock;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const-string/jumbo v0, "OPAnalogClock"

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPAnalogClock;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 54
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPAnalogClock;->refreshTime()V

    .line 55
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 47
    const v0, 0x7f0e0034

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/clock/OPAnalogClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mHour:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f0e0033

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/clock/OPAnalogClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mMin:Landroid/widget/ImageView;

    .line 49
    return-void
.end method

.method public refreshTime()V
    .locals 10

    .prologue
    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "hh:mm"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "time":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "refreshTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "splitString":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, "hour":I
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 67
    .local v3, "min":I
    iget-object v7, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hour = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", min = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v7, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mHour:Landroid/widget/ImageView;

    const v8, 0x7f020004

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object v7, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mMin:Landroid/widget/ImageView;

    const v8, 0x7f020005

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    mul-int/lit16 v7, v1, 0x168

    div-int/lit8 v7, v7, 0xc

    mul-int/lit8 v8, v3, 0x1e

    div-int/lit8 v8, v8, 0x3c

    add-int/2addr v7, v8

    int-to-float v2, v7

    .line 73
    .local v2, "hourAngle":F
    mul-int/lit16 v7, v3, 0x168

    div-int/lit8 v7, v7, 0x3c

    int-to-float v4, v7

    .line 74
    .local v4, "minAngle":F
    iget-object v7, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mHour:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 75
    iget-object v7, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mMin:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 77
    return-void
.end method
