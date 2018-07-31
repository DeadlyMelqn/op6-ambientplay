.class public Lcom/android/server/policy/OemThreePointersGesturesListener;
.super Ljava/lang/Object;
.source "OemThreePointersGesturesListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;,
        Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_POINT_NUM:I = 0xc8

.field private static final MSG_OEM_PAUSE_DELIVER_POINTER:I = 0x3

.field private static final MSG_OEM_RESUME_DELIVER_POINTER:I = 0x4

.field private static final MSG_OEM_TAKE_SCREEN_SHOT:I = 0x5

.field private static final SCREEN_SHOT_PRECISE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "OemGestures"

.field private static final THREE_FINGER_TAP_INTERVAL:I = 0x1f4


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mCurrentUserId:I

.field private mFirstShotY:I

.field private mHandler:Landroid/os/Handler;

.field private mIsInTapInterval:Z

.field private mIsShotScreenEnable:Z

.field private mLast1ShotY:Landroid/graphics/Point;

.field private mLast2ShotY:Landroid/graphics/Point;

.field private mMaxNumPointers:I

.field private mPointers0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPointers1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPointers2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field mScreenLength_1_3:I

.field private mScreenWidth:I

.field mScreenWidth_1_3:I


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/OemThreePointersGesturesListener;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemThreePointersGesturesListener;

    .prologue
    iget v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurrentUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/OemThreePointersGesturesListener;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemThreePointersGesturesListener;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurrentUserId:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/OemThreePointersGesturesListener;->DEBUG:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    .line 60
    iput-boolean v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsShotScreenEnable:Z

    .line 62
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mFirstShotY:I

    .line 66
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenHeight:I

    .line 67
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth:I

    .line 72
    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurrentUserId:I

    .line 78
    iput-boolean v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsInTapInterval:Z

    .line 210
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenLength_1_3:I

    .line 211
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth_1_3:I

    .line 82
    iput-object p1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 85
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 86
    .local v1, "wm":Landroid/view/WindowManager;
    const-string/jumbo v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mActivityManager:Landroid/app/ActivityManager;

    .line 87
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 88
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenLength_1_3:I

    .line 89
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth_1_3:I

    .line 91
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenHeight:I

    .line 92
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth:I

    .line 93
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/policy/OemThreePointersGesturesListener$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/OemThreePointersGesturesListener$1;-><init>(Lcom/android/server/policy/OemThreePointersGesturesListener;)V

    .line 100
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurrentUserId:I

    .line 102
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    return-object p1
.end method

.method private getAngle(Ljava/util/ArrayList;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "pointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v7, 0x0

    .line 244
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 245
    :cond_0
    return v7

    .line 247
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 248
    .local v4, "length":I
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v2, v6, v5

    .line 249
    .local v2, "deltX":I
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v3, v6, v5

    .line 250
    .local v3, "deltY":I
    if-nez v2, :cond_3

    .line 251
    if-ltz v3, :cond_2

    .line 252
    const/16 v5, 0x5a

    return v5

    .line 254
    :cond_2
    const/16 v5, -0x5a

    return v5

    .line 257
    :cond_3
    int-to-double v6, v3

    int-to-double v8, v2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 258
    .local v0, "angle":D
    if-gez v2, :cond_4

    .line 259
    const-wide v6, 0x4066800000000000L    # 180.0

    add-double/2addr v0, v6

    .line 261
    :cond_4
    double-to-int v5, v0

    return v5
.end method

.method private getDeltaAngle(II)I
    .locals 2
    .param p1, "angle0"    # I
    .param p2, "angle1"    # I

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "deltaAngle":I
    if-le p1, p2, :cond_2

    .line 267
    sub-int v0, p1, p2

    .line 271
    :cond_0
    :goto_0
    const/16 v1, 0xb4

    if-le v0, v1, :cond_1

    .line 272
    rsub-int v0, v0, 0x168

    .line 274
    :cond_1
    return v0

    .line 268
    :cond_2
    if-ge p1, p2, :cond_0

    .line 269
    sub-int v0, p2, p1

    goto :goto_0
.end method

.method private getMaxDeltaAngle()I
    .locals 8

    .prologue
    .line 278
    iget-object v7, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getAngle(Ljava/util/ArrayList;)I

    move-result v0

    .line 279
    .local v0, "angle0":I
    iget-object v7, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getAngle(Ljava/util/ArrayList;)I

    move-result v1

    .line 280
    .local v1, "angle1":I
    iget-object v7, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getAngle(Ljava/util/ArrayList;)I

    move-result v2

    .line 282
    .local v2, "angle2":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getDeltaAngle(II)I

    move-result v3

    .line 283
    .local v3, "deltAngle0":I
    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getDeltaAngle(II)I

    move-result v4

    .line 284
    .local v4, "deltAngle1":I
    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getDeltaAngle(II)I

    move-result v5

    .line 286
    .local v5, "deltAngle2":I
    if-le v3, v4, :cond_0

    move v6, v3

    .line 287
    .local v6, "maxDeltaAngle":I
    :goto_0
    if-le v6, v5, :cond_1

    .line 289
    :goto_1
    return v6

    .line 286
    .end local v6    # "maxDeltaAngle":I
    :cond_0
    move v6, v4

    .restart local v6    # "maxDeltaAngle":I
    goto :goto_0

    .line 287
    :cond_1
    move v6, v5

    goto :goto_1
.end method

.method private getScreenHeight_1_3()I
    .locals 2

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 203
    .local v0, "orient":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 204
    iget v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth_1_3:I

    return v1

    .line 206
    :cond_0
    iget v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenLength_1_3:I

    return v1
.end method

.method private getScreenWidth_1_3()I
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 194
    .local v0, "orient":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 195
    iget v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenLength_1_3:I

    return v1

    .line 197
    :cond_0
    iget v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth_1_3:I

    return v1
.end method

.method private recordPointers(Landroid/view/MotionEvent;II)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointIndex"    # I
    .param p3, "maxNumPointers"    # I

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x0

    .line 214
    const/4 v2, 0x3

    if-ne p3, v2, :cond_1

    .line 215
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 216
    .local v1, "pointTemp":Landroid/graphics/Point;
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 217
    .local v0, "pointId":I
    if-nez v0, :cond_2

    .line 218
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 219
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 220
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v0    # "pointId":I
    .end local v1    # "pointTemp":Landroid/graphics/Point;
    :cond_1
    :goto_0
    return-void

    .line 225
    .restart local v0    # "pointId":I
    .restart local v1    # "pointTemp":Landroid/graphics/Point;
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 226
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 227
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 228
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 229
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 231
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 233
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 234
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 235
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_5

    .line 236
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 238
    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private shouldShot()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 294
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 295
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 296
    .local v2, "last2":I
    add-int/lit8 v1, v2, -0x5

    .line 297
    .local v1, "last1":I
    if-lez v1, :cond_1

    .line 298
    :goto_0
    if-lez v2, :cond_2

    .line 299
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iput-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mLast1ShotY:Landroid/graphics/Point;

    .line 300
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iput-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mLast2ShotY:Landroid/graphics/Point;

    .line 303
    .end local v1    # "last1":I
    .end local v2    # "last2":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getMaxDeltaAngle()I

    move-result v0

    .line 304
    .local v0, "deltAngle":I
    const/16 v3, 0x1e

    if-lt v0, v3, :cond_3

    .line 305
    return v4

    .line 297
    .end local v0    # "deltAngle":I
    .restart local v1    # "last1":I
    .restart local v2    # "last2":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 298
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 308
    .end local v1    # "last1":I
    .end local v2    # "last2":I
    .restart local v0    # "deltAngle":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/policy/OemThreePointersGesturesListener;->shouldShotByPoints(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/policy/OemThreePointersGesturesListener;->shouldShotByPoints(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 309
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/policy/OemThreePointersGesturesListener;->shouldShotByPoints(Ljava/util/ArrayList;)Z

    move-result v3

    .line 308
    :goto_2
    return v3

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method private shouldShotByPoints(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "pointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v8, 0x0

    .line 313
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ltz v7, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 314
    :cond_0
    return v8

    .line 318
    :cond_1
    new-instance v6, Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;

    invoke-direct {v6, p0}, Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;-><init>(Lcom/android/server/policy/OemThreePointersGesturesListener;)V

    .line 319
    .local v6, "yComparator":Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;
    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 320
    invoke-static {p1, v6}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 321
    .local v2, "maxPCY":Landroid/graphics/Point;
    invoke-static {p1, v6}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 322
    .local v4, "minPCY":Landroid/graphics/Point;
    sget-boolean v7, Lcom/android/server/policy/OemThreePointersGesturesListener;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 323
    const-string/jumbo v7, "OemGestures"

    .line 324
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " maxPCY.y"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " minPCY.y"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "pointers"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 323
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_2
    new-instance v5, Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;

    invoke-direct {v5, p0}, Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;-><init>(Lcom/android/server/policy/OemThreePointersGesturesListener;)V

    .line 328
    .local v5, "xComparator":Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;
    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 329
    invoke-static {p1, v5}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 330
    .local v1, "maxPCX":Landroid/graphics/Point;
    invoke-static {p1, v5}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 331
    .local v3, "minPCX":Landroid/graphics/Point;
    sget-boolean v7, Lcom/android/server/policy/OemThreePointersGesturesListener;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 332
    const-string/jumbo v7, "OemGestures"

    .line 333
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " maxPCX.x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " minPCX.x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "pointers"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 332
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_3
    const/4 v0, 0x0

    .line 337
    .local v0, "bResult":Z
    iget v7, v2, Landroid/graphics/Point;->y:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-direct {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getScreenHeight_1_3()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_4

    .line 338
    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    .line 337
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 338
    invoke-direct {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getScreenWidth_1_3()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    .line 337
    if-ge v7, v8, :cond_4

    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    .line 337
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 115
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurrentUserId:I

    if-eqz v4, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsShotScreenEnable:Z

    if-nez v4, :cond_1

    .line 119
    return-void

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 124
    .local v1, "action":I
    if-eqz v1, :cond_2

    .line 125
    and-int/lit16 v4, v1, 0xff

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 126
    :cond_2
    const v4, 0xff00

    and-int/2addr v4, v1

    shr-int/lit8 v3, v4, 0x8

    .line 128
    .local v3, "index":I
    if-nez v1, :cond_3

    .line 129
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurDown:Z

    .line 130
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    .line 131
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mMaxNumPointers:I

    .line 134
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 135
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 136
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 139
    :cond_3
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    .line 142
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 143
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mFirstShotY:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 144
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mFirstShotY:I

    .line 146
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->pauseDeliverPointer()V

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    const/4 v4, 0x1

    .line 149
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsInTapInterval:Z

    .line 154
    :cond_5
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mMaxNumPointers:I

    iget v5, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    if-ge v4, v5, :cond_6

    .line 155
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mMaxNumPointers:I

    .line 158
    .end local v3    # "index":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 160
    .local v0, "NI":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_8

    .line 161
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mMaxNumPointers:I

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/policy/OemThreePointersGesturesListener;->recordPointers(Landroid/view/MotionEvent;II)V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 150
    .end local v0    # "NI":I
    .end local v2    # "i":I
    .restart local v3    # "index":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    .line 164
    .end local v3    # "index":I
    .restart local v0    # "NI":I
    .restart local v2    # "i":I
    :cond_8
    const/4 v4, 0x1

    if-eq v1, v4, :cond_9

    .line 165
    const/4 v4, 0x3

    if-ne v1, v4, :cond_c

    .line 167
    :cond_9
    :goto_2
    const v4, 0xff00

    and-int/2addr v4, v1

    shr-int/lit8 v3, v4, 0x8

    .line 170
    .restart local v3    # "index":I
    const/4 v4, 0x1

    if-eq v1, v4, :cond_a

    .line 171
    const/4 v4, 0x3

    if-ne v1, v4, :cond_d

    .line 172
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->resumeDeliverPointer()V

    .line 173
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurDown:Z

    .line 174
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    .line 190
    .end local v3    # "index":I
    :cond_b
    :goto_3
    return-void

    .line 166
    :cond_c
    and-int/lit16 v4, v1, 0xff

    const/4 v5, 0x6

    if-ne v4, v5, :cond_b

    goto :goto_2

    .line 177
    .restart local v3    # "index":I
    :cond_d
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_e

    iget-boolean v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsInTapInterval:Z

    if-eqz v4, :cond_e

    .line 179
    invoke-direct {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->shouldShot()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 180
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 184
    :cond_e
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    .line 185
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 186
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 187
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_3
.end method

.method public pauseDeliverPointer()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 360
    sget-boolean v0, Lcom/android/server/policy/OemThreePointersGesturesListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 361
    const-string/jumbo v0, "OemGestures"

    const-string/jumbo v1, "pauseDeliverPointer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 368
    :cond_2
    return-void
.end method

.method public resumeDeliverPointer()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 372
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 378
    :cond_1
    return-void
.end method

.method public setScreenShotEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsShotScreenEnable:Z

    .line 357
    return-void
.end method
