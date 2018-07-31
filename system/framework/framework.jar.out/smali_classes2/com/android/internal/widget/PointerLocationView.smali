.class public Lcom/android/internal/widget/PointerLocationView;
.super Landroid/view/View;
.source "PointerLocationView.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;,
        Lcom/android/internal/widget/PointerLocationView$PointerState;
    }
.end annotation


# static fields
.field private static final ALT_STRATEGY_PROPERY_KEY:Ljava/lang/String; = "debug.velocitytracker.alt"

.field private static final TAG:Ljava/lang/String; = "Pointer"


# instance fields
.field private final ESTIMATE_FUTURE_POINTS:I

.field private final ESTIMATE_INTERVAL:F

.field private final ESTIMATE_PAST_POINTS:I

.field private mActivePointerId:I

.field private final mAltVelocity:Landroid/view/VelocityTracker;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private final mCurrentPointPaint:Landroid/graphics/Paint;

.field private mHeaderBottom:I

.field private final mIm:Landroid/hardware/input/InputManager;

.field private mMaxNumPointers:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/PointerLocationView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintCoords:Z

.field private mReusableOvalRect:Landroid/graphics/RectF;

.field private final mTargetPaint:Landroid/graphics/Paint;

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

.field private final mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final mTextLevelPaint:Landroid/graphics/Paint;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private final mVelocity:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0xc0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 138
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 107
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_PAST_POINTS:I

    .line 108
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_FUTURE_POINTS:I

    .line 109
    const v2, 0x3ca3d70a    # 0.02f

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_INTERVAL:F

    .line 121
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    .line 128
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 133
    new-instance v2, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-direct {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 135
    iput-boolean v7, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 209
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    .line 139
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/PointerLocationView;->setFocusableInTouchMode(Z)V

    .line 141
    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    .line 143
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    .line 144
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 145
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 146
    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 148
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 149
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 150
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const/16 v3, 0x80

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 152
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 153
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9, v6, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 155
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 156
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 158
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    .line 161
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v6, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 163
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 165
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    .line 166
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v5, v5, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 168
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    .line 169
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v3, 0x60

    invoke-virtual {v2, v6, v5, v3, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 171
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    new-instance v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 175
    .local v1, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iput v5, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 178
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    .line 180
    const-string/jumbo v2, "debug.velocitytracker.alt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "altStrategy":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const-string/jumbo v2, "Pointer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Comparing default velocity tracker strategy with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {v0}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    goto :goto_0
.end method

.method private drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "major"    # F
    .param p5, "minor"    # F
    .param p6, "angle"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 213
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p6

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p5, v4

    sub-float v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p5, v4

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 216
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v4

    sub-float v1, p3, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v4

    add-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 218
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 220
    return-void
.end method

.method private logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V
    .locals 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "index"    # I
    .param p4, "coords"    # Landroid/view/MotionEvent$PointerCoords;
    .param p5, "id"    # I
    .param p6, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 444
    move-object/from16 v0, p6

    invoke-virtual {v0, p3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    .line 445
    .local v4, "toolType":I
    invoke-virtual/range {p6 .. p6}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    .line 447
    .local v2, "buttonState":I
    and-int/lit16 v5, p2, 0xff

    packed-switch v5, :pswitch_data_0

    .line 492
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, "prefix":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, "Pointer"

    iget-object v6, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 497
    const-string/jumbo v7, " id "

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 497
    add-int/lit8 v7, p5, 0x1

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 498
    const-string/jumbo v7, ": "

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 500
    const-string/jumbo v7, " ("

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 500
    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v8, 0x3

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 500
    const-string/jumbo v7, ", "

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 500
    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v8, 0x3

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 501
    const-string/jumbo v7, ") Pressure="

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 501
    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v8, 0x3

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 502
    const-string/jumbo v7, " Size="

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 502
    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v8, 0x3

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 503
    const-string/jumbo v7, " TouchMajor="

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 503
    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    const/4 v8, 0x3

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 504
    const-string/jumbo v7, " TouchMinor="

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 504
    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    const/4 v8, 0x3

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 505
    const-string/jumbo v7, " ToolMajor="

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 505
    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    const/4 v8, 0x3

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 506
    const-string/jumbo v7, " ToolMinor="

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 506
    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    const/4 v8, 0x3

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 507
    const-string/jumbo v7, " Orientation="

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 507
    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/high16 v8, 0x43340000    # 180.0f

    mul-float/2addr v7, v8

    float-to-double v8, v7

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    double-to-float v7, v8

    const/4 v8, 0x1

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 508
    const-string/jumbo v7, "deg"

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 509
    const-string/jumbo v7, " Tilt="

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 510
    const/16 v7, 0x19

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v7

    const/high16 v8, 0x43340000    # 180.0f

    mul-float/2addr v7, v8

    float-to-double v8, v7

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    .line 509
    div-double/2addr v8, v10

    double-to-float v7, v8

    .line 510
    const/4 v8, 0x1

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 511
    const-string/jumbo v7, "deg"

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 512
    const-string/jumbo v7, " Distance="

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 512
    const/16 v7, 0x18

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x1

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 513
    const-string/jumbo v7, " VScroll="

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 513
    const/16 v7, 0x9

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x1

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 514
    const-string/jumbo v7, " HScroll="

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 514
    const/16 v7, 0xa

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x1

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 515
    const-string/jumbo v7, " BoundingBox=[("

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 516
    const/16 v7, 0x20

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x3

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 517
    const-string/jumbo v7, ", "

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 517
    const/16 v7, 0x21

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x3

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 517
    const-string/jumbo v7, ")"

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 518
    const-string/jumbo v7, ", ("

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 518
    const/16 v7, 0x22

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x3

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 519
    const-string/jumbo v7, ", "

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 519
    const/16 v7, 0x23

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x3

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 520
    const-string/jumbo v7, ")]"

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 521
    const-string/jumbo v7, " ToolType="

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 521
    invoke-static {v4}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v7

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 522
    const-string/jumbo v7, " ButtonState="

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    .line 522
    invoke-static {v2}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v7

    .line 496
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void

    .line 449
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v3, "DOWN"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 452
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v3, "UP"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 455
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v3, "MOVE"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 458
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v3, "CANCEL"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 461
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v3, "OUTSIDE"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 464
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_5
    const v5, 0xff00

    and-int/2addr v5, p2

    shr-int/lit8 v5, v5, 0x8

    if-ne p3, v5, :cond_0

    .line 466
    const-string/jumbo v3, "DOWN"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 468
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "MOVE"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 472
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_6
    const v5, 0xff00

    and-int/2addr v5, p2

    shr-int/lit8 v5, v5, 0x8

    if-ne p3, v5, :cond_1

    .line 474
    const-string/jumbo v3, "UP"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 476
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "MOVE"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 480
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v3, "HOVER MOVE"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 483
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v3, "HOVER ENTER"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 486
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v3, "HOVER EXIT"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 489
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v3, "SCROLL"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 447
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private logInputDeviceState(ILjava/lang/String;)V
    .locals 4
    .param p1, "deviceId"    # I
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 765
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 766
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    .line 767
    const-string/jumbo v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :goto_0
    return-void

    .line 769
    :cond_0
    const-string/jumbo v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logInputDevices()V
    .locals 4

    .prologue
    .line 758
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 759
    .local v0, "deviceIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 760
    aget v2, v0, v1

    const-string/jumbo v3, "Device Enumerated"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 759
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 762
    :cond_0
    return-void
.end method

.method private logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 425
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 426
    .local v2, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .line 427
    .local v7, "N":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 428
    .local v8, "NI":I
    const/4 v9, 0x0

    .local v9, "historyPos":I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 429
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_0

    .line 430
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 431
    .local v5, "id":I
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v3, v9, v0}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 432
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 429
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 428
    .end local v5    # "id":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 435
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v8, :cond_2

    .line 436
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 437
    .restart local v5    # "id":I
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v3, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 438
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 435
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 440
    .end local v5    # "id":I
    :cond_2
    return-void
.end method

.method private static shouldLogKey(I)Z
    .locals 2
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 708
    packed-switch p0, :pswitch_data_0

    .line 716
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 717
    invoke-static {p0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    .line 716
    :cond_0
    return v0

    .line 714
    :pswitch_0
    return v0

    .line 708
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 729
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 731
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 732
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->logInputDevices()V

    .line 733
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 737
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 739
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 740
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 39
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v36

    .line 225
    .local v36, "w":I
    div-int/lit8 v28, v36, 0x7

    .line 226
    .local v28, "itemW":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v2, v2

    add-int/lit8 v21, v2, 0x1

    .line 227
    .local v21, "base":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    move/from16 v22, v0

    .line 229
    .local v22, "bottom":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 232
    .local v19, "NP":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ltz v2, :cond_2

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 235
    .local v34, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v3, 0x0

    const/4 v4, 0x0

    add-int/lit8 v2, v28, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 237
    const-string/jumbo v7, "P: "

    .line 236
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 237
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 236
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 238
    const-string/jumbo v7, " / "

    .line 236
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 238
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 236
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 236
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 241
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get12(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v18

    .line 242
    .local v18, "N":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v2, :cond_0

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get8(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez v18, :cond_3

    .line 243
    :cond_1
    move/from16 v0, v28

    int-to-float v3, v0

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 245
    const-string/jumbo v7, "X: "

    .line 244
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 245
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v10, 0x1

    .line 244
    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    add-int/lit8 v7, v28, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 244
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 247
    mul-int/lit8 v2, v28, 0x2

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x3

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 249
    const-string/jumbo v7, "Y: "

    .line 248
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 249
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v10, 0x1

    .line 248
    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    mul-int/lit8 v7, v28, 0x2

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 248
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 268
    :goto_0
    mul-int/lit8 v2, v28, 0x3

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x4

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 270
    const-string/jumbo v7, "Xv: "

    .line 269
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 270
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get16(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v7

    const/4 v10, 0x3

    .line 269
    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    mul-int/lit8 v7, v28, 0x3

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 269
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 273
    mul-int/lit8 v2, v28, 0x4

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x5

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 275
    const-string/jumbo v7, "Yv: "

    .line 274
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 275
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get17(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v7

    const/4 v10, 0x3

    .line 274
    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    mul-int/lit8 v7, v28, 0x4

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 274
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 278
    mul-int/lit8 v2, v28, 0x5

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x6

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 279
    mul-int/lit8 v2, v28, 0x5

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x5

    int-to-float v2, v2

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    move/from16 v0, v28

    int-to-float v10, v0

    mul-float/2addr v7, v10

    add-float/2addr v2, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v2, v7

    .line 280
    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 279
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 282
    const-string/jumbo v7, "Prs: "

    .line 281
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 282
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v10, 0x2

    .line 281
    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    mul-int/lit8 v7, v28, 0x5

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 281
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 285
    mul-int/lit8 v2, v28, 0x6

    int-to-float v3, v2

    const/4 v4, 0x0

    move/from16 v0, v36

    int-to-float v5, v0

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 286
    mul-int/lit8 v2, v28, 0x6

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x6

    int-to-float v2, v2

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->size:F

    move/from16 v0, v28

    int-to-float v10, v0

    mul-float/2addr v7, v10

    add-float/2addr v2, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v2, v7

    .line 287
    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 286
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 289
    const-string/jumbo v7, "Size: "

    .line 288
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 289
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v10, 0x2

    .line 288
    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    mul-int/lit8 v7, v28, 0x6

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 288
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 294
    .end local v18    # "N":I
    .end local v34    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_2
    const/16 v31, 0x0

    .local v31, "p":I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 298
    .restart local v34    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get12(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v18

    .line 299
    .restart local v18    # "N":I
    const/4 v3, 0x0

    .local v3, "lastX":F
    const/4 v4, 0x0

    .line 300
    .local v4, "lastY":F
    const/16 v26, 0x0

    .line 301
    .local v26, "haveLast":Z
    const/16 v23, 0x0

    .line 302
    .local v23, "drawn":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v10, 0x80

    const/16 v11, 0xff

    const/16 v12, 0xff

    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 303
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_2
    move/from16 v0, v27

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 304
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get14(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v2

    aget v5, v2, v27

    .line 305
    .local v5, "x":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get15(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v2

    aget v6, v2, v27

    .line 306
    .local v6, "y":F
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 307
    const/16 v26, 0x0

    .line 303
    :goto_3
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 252
    .end local v3    # "lastX":F
    .end local v4    # "lastY":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v23    # "drawn":Z
    .end local v26    # "haveLast":Z
    .end local v27    # "i":I
    .end local v31    # "p":I
    :cond_3
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get14(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v2

    add-int/lit8 v7, v18, -0x1

    aget v2, v2, v7

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get14(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v7

    const/4 v10, 0x0

    aget v7, v7, v10

    sub-float v24, v2, v7

    .line 253
    .local v24, "dx":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get15(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v2

    add-int/lit8 v7, v18, -0x1

    aget v2, v2, v7

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get15(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v7

    const/4 v10, 0x0

    aget v7, v7, v10

    sub-float v25, v2, v7

    .line 254
    .local v25, "dy":F
    move/from16 v0, v28

    int-to-float v3, v0

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    .line 255
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v2, v2, v7

    if-gez v2, :cond_4

    .line 256
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    :goto_4
    move-object/from16 v2, p1

    .line 254
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 258
    const-string/jumbo v7, "dX: "

    .line 257
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 258
    const/4 v7, 0x1

    .line 257
    move/from16 v0, v24

    invoke-virtual {v2, v0, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    add-int/lit8 v7, v28, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 257
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 260
    mul-int/lit8 v2, v28, 0x2

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x3

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    .line 261
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v2, v2, v7

    if-gez v2, :cond_5

    .line 262
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    :goto_5
    move-object/from16 v2, p1

    .line 260
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 264
    const-string/jumbo v7, "dY: "

    .line 263
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    .line 264
    const/4 v7, 0x1

    .line 263
    move/from16 v0, v25

    invoke-virtual {v2, v0, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    mul-int/lit8 v7, v28, 0x2

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 263
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 256
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    goto/16 :goto_4

    .line 262
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    goto :goto_5

    .line 310
    .end local v24    # "dx":F
    .end local v25    # "dy":F
    .restart local v3    # "lastX":F
    .restart local v4    # "lastY":F
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    .restart local v23    # "drawn":Z
    .restart local v26    # "haveLast":Z
    .restart local v27    # "i":I
    .restart local v31    # "p":I
    :cond_6
    if-eqz v26, :cond_7

    .line 311
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 312
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get13(Lcom/android/internal/widget/PointerLocationView$PointerState;)[Z

    move-result-object v2

    aget-boolean v2, v2, v27

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    .line 313
    .local v32, "paint":Landroid/graphics/Paint;
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 314
    const/16 v23, 0x1

    .line 316
    .end local v32    # "paint":Landroid/graphics/Paint;
    :cond_7
    move v3, v5

    .line 317
    move v4, v6

    .line 318
    const/16 v26, 0x1

    goto/16 :goto_3

    .line 312
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    .restart local v32    # "paint":Landroid/graphics/Paint;
    goto :goto_6

    .line 321
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v32    # "paint":Landroid/graphics/Paint;
    :cond_9
    if-eqz v23, :cond_c

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0x80

    const/16 v10, 0x80

    const/4 v11, 0x0

    const/16 v12, 0x80

    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 324
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get9(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    const v7, -0x425c28f6    # -0.08f

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v8

    .line 325
    .local v8, "lx":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get9(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    const v7, -0x425c28f6    # -0.08f

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v9

    .line 326
    .local v9, "ly":F
    const/16 v27, -0x3

    :goto_7
    const/4 v2, 0x2

    move/from16 v0, v27

    if-gt v0, v2, :cond_a

    .line 327
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get9(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    move/from16 v0, v27

    int-to-float v7, v0

    const v10, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v10

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v5

    .line 328
    .restart local v5    # "x":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get9(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    move/from16 v0, v27

    int-to-float v7, v0

    const v10, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v10

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v6

    .line 329
    .restart local v6    # "y":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v10, v5

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 330
    move v8, v5

    .line 331
    move v9, v6

    .line 326
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 335
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v10, 0xff

    const/16 v11, 0x40

    const/16 v12, 0x80

    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 336
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get16(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    const/high16 v7, 0x41800000    # 16.0f

    mul-float v37, v2, v7

    .line 337
    .local v37, "xVel":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get17(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    const/high16 v7, 0x41800000    # 16.0f

    mul-float v38, v2, v7

    .line 338
    .local v38, "yVel":F
    add-float v13, v3, v37

    add-float v14, v4, v38

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v3

    move v12, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_c

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0x80

    const/4 v10, 0x0

    const/16 v11, 0x80

    const/16 v12, 0x80

    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 343
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get0(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    const v7, -0x425c28f6    # -0.08f

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v8

    .line 344
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get0(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    const v7, -0x425c28f6    # -0.08f

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v9

    .line 345
    const/16 v27, -0x3

    :goto_8
    const/4 v2, 0x2

    move/from16 v0, v27

    if-gt v0, v2, :cond_b

    .line 346
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get0(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    move/from16 v0, v27

    int-to-float v7, v0

    const v10, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v10

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v5

    .line 347
    .restart local v5    # "x":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get0(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    move/from16 v0, v27

    int-to-float v7, v0

    const v10, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v10

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v6

    .line 348
    .restart local v6    # "y":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v10, v5

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 349
    move v8, v5

    .line 350
    move v9, v6

    .line 345
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 353
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v10, 0x40

    const/16 v11, 0xff

    const/16 v12, 0x80

    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 354
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get1(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    const/high16 v7, 0x41800000    # 16.0f

    mul-float v37, v2, v7

    .line 355
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get2(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    const/high16 v7, 0x41800000    # 16.0f

    mul-float v38, v2, v7

    .line 356
    add-float v13, v3, v37

    add-float v14, v4, v38

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v3

    move v12, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 360
    .end local v8    # "lx":F
    .end local v9    # "ly":F
    .end local v37    # "xVel":F
    .end local v38    # "yVel":F
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v2, :cond_f

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get8(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 362
    const/4 v11, 0x0

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v2

    int-to-float v13, v2

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v14, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 363
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v11, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v12, 0x0

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v13, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getHeight()I

    move-result v2

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 366
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v2, v7

    float-to-int v0, v2

    move/from16 v33, v0

    .line 367
    .local v33, "pressureLevel":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v33

    rsub-int v7, v0, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    move/from16 v0, v33

    invoke-virtual {v2, v10, v0, v11, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 368
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v33

    rsub-int v7, v0, 0xff

    const/16 v10, 0xff

    const/16 v11, 0x80

    move/from16 v0, v33

    invoke-virtual {v2, v10, v0, v7, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 372
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v13, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v14, v2, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 373
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v15, v2, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v0, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 372
    invoke-direct/range {v10 .. v17}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v33

    rsub-int v7, v0, 0xff

    const/16 v10, 0xff

    const/16 v11, 0x80

    move/from16 v0, v33

    invoke-virtual {v2, v10, v0, v11, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 377
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v13, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v14, v2, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 378
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v15, v2, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v0, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 377
    invoke-direct/range {v10 .. v17}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 381
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    const v7, 0x3f333333    # 0.7f

    mul-float v20, v2, v7

    .line 382
    .local v20, "arrowSize":F
    const/high16 v2, 0x41a00000    # 20.0f

    cmpg-float v2, v20, v2

    if-gez v2, :cond_d

    .line 383
    const/high16 v20, 0x41a00000    # 20.0f

    .line 385
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v10, 0xff

    const/4 v11, 0x0

    move/from16 v0, v33

    invoke-virtual {v2, v7, v0, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 386
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 387
    move/from16 v0, v20

    float-to-double v12, v0

    .line 386
    mul-double/2addr v10, v12

    double-to-float v0, v10

    move/from16 v29, v0

    .line 388
    .local v29, "orientationVectorX":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    neg-double v10, v10

    .line 389
    move/from16 v0, v20

    float-to-double v12, v0

    .line 388
    mul-double/2addr v10, v12

    double-to-float v0, v10

    move/from16 v30, v0

    .line 390
    .local v30, "orientationVectorY":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get11(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_e

    .line 391
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get11(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v2

    const/4 v7, 0x4

    if-ne v2, v7, :cond_10

    .line 393
    :cond_e
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v11, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 394
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v13, v2, v29

    .line 395
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v14, v2, v30

    .line 396
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    .line 393
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 409
    :goto_9
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    const/16 v7, 0x19

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v2

    float-to-double v10, v2

    .line 408
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v0, v10

    move/from16 v35, v0

    .line 411
    .local v35, "tiltScale":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v7, v29, v35

    add-float/2addr v2, v7

    .line 412
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v10, v30, v35

    add-float/2addr v7, v10

    .line 413
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v11, 0x40400000    # 3.0f

    .line 410
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v11, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 416
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get10(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 417
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get4(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v11

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get6(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v12

    .line 418
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get5(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v13

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get3(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    .line 417
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 294
    .end local v20    # "arrowSize":F
    .end local v29    # "orientationVectorX":F
    .end local v30    # "orientationVectorY":F
    .end local v33    # "pressureLevel":I
    .end local v35    # "tiltScale":F
    :cond_f
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 400
    .restart local v20    # "arrowSize":F
    .restart local v29    # "orientationVectorX":F
    .restart local v30    # "orientationVectorY":F
    .restart local v33    # "pressureLevel":I
    :cond_10
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v11, v2, v29

    .line 401
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v12, v2, v30

    .line 402
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v13, v2, v29

    .line 403
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v14, v2, v30

    .line 404
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    .line 399
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 422
    .end local v3    # "lastX":F
    .end local v4    # "lastY":F
    .end local v18    # "N":I
    .end local v20    # "arrowSize":F
    .end local v23    # "drawn":Z
    .end local v26    # "haveLast":Z
    .end local v27    # "i":I
    .end local v29    # "orientationVectorX":F
    .end local v30    # "orientationVectorY":F
    .end local v33    # "pressureLevel":I
    .end local v34    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_11
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 671
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 672
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 673
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 681
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 674
    :cond_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 675
    const-string/jumbo v1, "Joystick"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 676
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 677
    const-string/jumbo v1, "Position"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 679
    :cond_2
    const-string/jumbo v1, "Generic"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 744
    const-string/jumbo v0, "Device Added"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 745
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 749
    const-string/jumbo v0, "Device Changed"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 750
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 754
    const-string/jumbo v0, "Device Removed"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 755
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 686
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 687
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 688
    .local v0, "repeatCount":I
    if-nez v0, :cond_0

    .line 689
    const-string/jumbo v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Key Down: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 691
    :cond_0
    const-string/jumbo v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Key Repeat #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 695
    .end local v0    # "repeatCount":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 700
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    const-string/jumbo v0, "Pointer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key Up: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v0, 0x1

    return v0

    .line 704
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 196
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    .line 205
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 528
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 529
    .local v3, "action":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 531
    .local v10, "NP":I
    if-eqz v3, :cond_0

    .line 532
    and-int/lit16 v1, v3, 0xff

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 533
    :cond_0
    const v1, 0xff00

    and-int/2addr v1, v3

    shr-int/lit8 v13, v1, 0x8

    .line 535
    .local v13, "index":I
    if-nez v3, :cond_2

    .line 536
    const/4 v14, 0x0

    .local v14, "p":I
    :goto_0
    if-ge v14, v10, :cond_1

    .line 537
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 538
    .local v15, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-virtual {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->clearTrace()V

    .line 539
    const/4 v1, 0x0

    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set6(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 536
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 541
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 542
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 543
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 544
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_2

    .line 546
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 550
    .end local v14    # "p":I
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 551
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    if-ge v1, v2, :cond_3

    .line 552
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 555
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 556
    .local v6, "id":I
    :goto_1
    if-gt v10, v6, :cond_4

    .line 557
    new-instance v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 558
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 562
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ltz v1, :cond_5

    .line 563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-static {v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get8(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 562
    if-eqz v1, :cond_6

    .line 564
    :cond_5
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 567
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 568
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v1, 0x1

    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set6(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 569
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v11

    .line 570
    .local v11, "device":Landroid/view/InputDevice;
    if-eqz v11, :cond_c

    .line 571
    const/16 v1, 0x20

    invoke-virtual {v11, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    .line 570
    :goto_2
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set7(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 574
    .end local v6    # "id":I
    .end local v11    # "device":Landroid/view/InputDevice;
    .end local v13    # "index":I
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 576
    .local v9, "NI":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_8

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 583
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 584
    .local v8, "N":I
    const/4 v12, 0x0

    .local v12, "historyPos":I
    :goto_3
    if-ge v12, v8, :cond_10

    .line 585
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v9, :cond_f

    .line 586
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 587
    .restart local v6    # "id":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 588
    :goto_5
    if-eqz v15, :cond_e

    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    .line 589
    .local v5, "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v12, v5}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 590
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v1, :cond_9

    .line 591
    const-string/jumbo v2, "Pointer"

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 593
    :cond_9
    if-eqz v15, :cond_a

    .line 594
    iget v1, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v2, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v7, 0x0

    invoke-virtual {v15, v1, v2, v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    .line 585
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 571
    .end local v4    # "i":I
    .end local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v8    # "N":I
    .end local v9    # "NI":I
    .end local v12    # "historyPos":I
    .restart local v11    # "device":Landroid/view/InputDevice;
    .restart local v13    # "index":I
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_b
    const/4 v1, 0x0

    goto :goto_2

    .line 570
    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    .line 587
    .end local v11    # "device":Landroid/view/InputDevice;
    .end local v13    # "index":I
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .restart local v4    # "i":I
    .restart local v8    # "N":I
    .restart local v9    # "NI":I
    .restart local v12    # "historyPos":I
    :cond_d
    const/4 v15, 0x0

    .local v15, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    goto :goto_5

    .line 588
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .restart local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    goto :goto_6

    .line 584
    .end local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v6    # "id":I
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 598
    .end local v4    # "i":I
    :cond_10
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    if-ge v4, v9, :cond_16

    .line 599
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 600
    .restart local v6    # "id":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 601
    :goto_8
    if-eqz v15, :cond_15

    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    .line 602
    .restart local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 603
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v1, :cond_11

    .line 604
    const-string/jumbo v2, "Pointer"

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 606
    :cond_11
    if-eqz v15, :cond_13

    .line 607
    iget v1, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v2, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v7, 0x1

    invoke-virtual {v15, v1, v2, v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set9(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set10(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 610
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get9(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    .line 611
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_12

    .line 612
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set0(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set1(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 614
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get0(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    .line 616
    :cond_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set8(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I

    .line 618
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get10(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 619
    const/16 v1, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set3(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 620
    const/16 v1, 0x21

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set5(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 621
    const/16 v1, 0x22

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set4(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 622
    const/16 v1, 0x23

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set2(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 598
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 600
    .end local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :cond_14
    const/4 v15, 0x0

    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    goto/16 :goto_8

    .line 601
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .restart local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    goto/16 :goto_9

    .line 627
    .end local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v6    # "id":I
    :cond_16
    const/4 v1, 0x1

    if-eq v3, v1, :cond_17

    .line 628
    const/4 v1, 0x3

    if-ne v3, v1, :cond_18

    .line 630
    :cond_17
    const v1, 0xff00

    and-int/2addr v1, v3

    shr-int/lit8 v13, v1, 0x8

    .line 633
    .restart local v13    # "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 634
    .restart local v6    # "id":I
    if-lt v6, v10, :cond_19

    .line 635
    const-string/jumbo v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got pointer ID out of bounds: id="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, " arraysize="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 636
    const-string/jumbo v7, " pointerindex="

    .line 635
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 637
    const-string/jumbo v7, " action=0x"

    .line 635
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 637
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 635
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-void

    .line 629
    .end local v6    # "id":I
    .end local v13    # "index":I
    :cond_18
    and-int/lit16 v1, v3, 0xff

    const/4 v2, 0x6

    if-eq v1, v2, :cond_17

    .line 656
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->invalidate()V

    .line 657
    return-void

    .line 640
    .restart local v6    # "id":I
    .restart local v13    # "index":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 641
    .local v15, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v1, 0x0

    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set6(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 643
    const/4 v1, 0x1

    if-eq v3, v1, :cond_1a

    .line 644
    const/4 v1, 0x3

    if-ne v3, v1, :cond_1b

    .line 645
    :cond_1a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 646
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    goto :goto_a

    .line 648
    :cond_1b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 649
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ne v1, v6, :cond_1c

    .line 650
    if-nez v13, :cond_1d

    const/4 v1, 0x1

    :goto_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 652
    :cond_1c
    const/high16 v1, 0x7fc00000    # NaNf

    const/high16 v2, 0x7fc00000    # NaNf

    const/4 v7, 0x0

    invoke-virtual {v15, v1, v2, v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    goto :goto_a

    .line 650
    :cond_1d
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 661
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 663
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->isFocused()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->requestFocus()Z

    .line 666
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 723
    const-string/jumbo v0, "Trackball"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 724
    const/4 v0, 0x1

    return v0
.end method

.method public setPrintCoords(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 191
    return-void
.end method
