.class public final Lcom/android/server/display/NightDisplayService;
.super Lcom/android/server/SystemService;
.source "NightDisplayService.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/NightDisplayService$1;,
        Lcom/android/server/display/NightDisplayService$AutoMode;,
        Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;,
        Lcom/android/server/display/NightDisplayService$CustomAutoMode;,
        Lcom/android/server/display/NightDisplayService$TwilightAutoMode;
    }
.end annotation


# static fields
.field private static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;

.field private static final MATRIX_IDENTITY:[F

.field private static final TAG:Ljava/lang/String; = "NightDisplayService"

.field private static final TRANSITION_DURATION:J = 0xbb8L


# instance fields
.field private mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

.field private mBootCompleted:Z

.field private mColorMatrixAnimator:Landroid/animation/ValueAnimator;

.field private final mColorTempCoefficients:[F

.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mCurrentUser:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsActivated:Ljava/lang/Boolean;

.field private mMatrixNight:[F

.field private mUserSetupObserver:Landroid/database/ContentObserver;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method static synthetic -get0()[F
    .locals 1

    sget-object v0, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/display/NightDisplayService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/NightDisplayService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/NightDisplayService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/display/NightDisplayService;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/NightDisplayService;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/NightDisplayService;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/display/NightDisplayService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/NightDisplayService;

    .prologue
    iget v0, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/display/NightDisplayService;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/NightDisplayService;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/display/NightDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/NightDisplayService;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/NightDisplayService;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/display/NightDisplayService;)[F
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/NightDisplayService;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mMatrixNight:[F

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/NightDisplayService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/NightDisplayService;
    .param p1, "-value"    # Landroid/animation/ValueAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/display/NightDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/NightDisplayService;
    .param p1, "-value"    # Landroid/database/ContentObserver;

    .prologue
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/content/ContentResolver;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/display/NightDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/display/NightDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/NightDisplayService;
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/display/NightDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/display/NightDisplayService;I[F)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/NightDisplayService;
    .param p1, "colorTemperature"    # I
    .param p2, "outTemp"    # [F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/NightDisplayService;->setMatrix(I[F)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/NightDisplayService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/NightDisplayService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService;->setUp()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    .line 79
    sget-object v0, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 85
    new-instance v0, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;-><init>(Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;)V

    sput-object v0, Lcom/android/server/display/NightDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    new-instance v0, Lcom/android/server/display/NightDisplayService$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/NightDisplayService$1;-><init>(Lcom/android/server/display/NightDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 115
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mMatrixNight:[F

    .line 117
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    .line 119
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mHandler:Landroid/os/Handler;

    .line 131
    return-void
.end method

.method private applyTint(Z)V
    .locals 6
    .param p1, "immediate"    # Z

    .prologue
    const/16 v4, 0x64

    .line 361
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 362
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 366
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    return-void

    .line 370
    :cond_1
    const-class v3, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v3}, Lcom/android/server/display/NightDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    .line 371
    .local v0, "dtm":Lcom/android/server/display/DisplayTransformManager;
    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayTransformManager;->getColorMatrix(I)[F

    move-result-object v1

    .line 372
    .local v1, "from":[F
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mMatrixNight:[F

    .line 374
    .local v2, "to":[F
    :goto_0
    if-eqz p1, :cond_3

    .line 375
    invoke-virtual {v0, v4, v2}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 411
    .end local v1    # "from":[F
    :goto_1
    return-void

    .line 372
    .end local v2    # "to":[F
    .restart local v1    # "from":[F
    :cond_2
    sget-object v2, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    .restart local v2    # "to":[F
    goto :goto_0

    .line 377
    :cond_3
    sget-object v3, Lcom/android/server/display/NightDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 378
    if-nez v1, :cond_4

    sget-object v1, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    .end local v1    # "from":[F
    :cond_4
    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 377
    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    .line 379
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 380
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    .line 381
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10c000d

    .line 380
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 382
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/server/display/NightDisplayService$3;

    invoke-direct {v4, p0, v0}, Lcom/android/server/display/NightDisplayService$3;-><init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/DisplayTransformManager;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 389
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/server/display/NightDisplayService$4;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/server/display/NightDisplayService$4;-><init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/DisplayTransformManager;[F)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 409
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1
.end method

.method public static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 6
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .prologue
    .line 462
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v2

    .line 463
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v5

    .line 462
    invoke-static {v1, v2, v3, v4, v5}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 466
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    .end local v0    # "ldt":Ljava/time/LocalDateTime;
    :cond_0
    return-object v0
.end method

.method public static getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 6
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .prologue
    .line 447
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v2

    .line 448
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v5

    .line 447
    invoke-static {v1, v2, v3, v4, v5}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 451
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    .end local v0    # "ldt":Ljava/time/LocalDateTime;
    :cond_0
    return-object v0
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 225
    const-string/jumbo v2, "user_setup_complete"

    invoke-static {p0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private onUserChanged(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, -0x2710

    .line 188
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    if-eq v1, v2, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 193
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 199
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    .line 201
    iget v1, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    if-eq v1, v2, :cond_1

    .line 202
    iget v1, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    invoke-static {v0, v1}, Lcom/android/server/display/NightDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 203
    new-instance v1, Lcom/android/server/display/NightDisplayService$2;

    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/display/NightDisplayService$2;-><init>(Lcom/android/server/display/NightDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 216
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    const/4 v4, 0x0

    .line 216
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 222
    :cond_1
    :goto_1
    return-void

    .line 194
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/NightDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService;->tearDown()V

    goto :goto_0

    .line 218
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/display/NightDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService;->setUp()V

    goto :goto_1
.end method

.method private setCoefficientMatrix(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 345
    invoke-static {}, Lcom/android/server/display/DisplayTransformManager;->isNativeModeEnabled()Z

    move-result v2

    .line 346
    .local v2, "isNative":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v2, :cond_0

    .line 347
    const v3, 0x1070035

    .line 346
    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "coefficients":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v3, 0x9

    if-ge v1, v3, :cond_1

    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 350
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v3, v1

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 348
    .end local v0    # "coefficients":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    const v3, 0x1070034

    goto :goto_0

    .line 352
    .restart local v0    # "coefficients":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method private setMatrix(I[F)V
    .locals 10
    .param p1, "colorTemperature"    # I
    .param p2, "outTemp"    # [F

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 420
    array-length v4, p2

    const/16 v5, 0x10

    if-eq v4, v5, :cond_0

    .line 421
    const-string/jumbo v4, "NightDisplayService"

    const-string/jumbo v5, "The display transformation matrix must be 4x4"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void

    .line 425
    :cond_0
    invoke-static {p2, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 427
    mul-int v4, p1, p1

    int-to-float v3, v4

    .line 428
    .local v3, "squareTemperature":F
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    aget v4, v4, v8

    mul-float/2addr v4, v3

    .line 429
    int-to-float v5, p1

    iget-object v6, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    mul-float/2addr v5, v6

    .line 428
    add-float/2addr v4, v5

    .line 429
    iget-object v5, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    .line 428
    add-float v2, v4, v5

    .line 430
    .local v2, "red":F
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    mul-float/2addr v4, v3

    .line 431
    int-to-float v5, p1

    iget-object v6, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    mul-float/2addr v5, v6

    .line 430
    add-float/2addr v4, v5

    .line 431
    iget-object v5, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    aget v5, v5, v9

    .line 430
    add-float v1, v4, v5

    .line 432
    .local v1, "green":F
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v4, v3

    .line 433
    int-to-float v5, p1

    iget-object v6, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    .line 432
    add-float/2addr v4, v5

    .line 433
    iget-object v5, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    .line 432
    add-float v0, v4, v5

    .line 434
    .local v0, "blue":F
    aput v2, p2, v8

    .line 435
    aput v1, p2, v9

    .line 436
    const/16 v4, 0xa

    aput v0, p2, v4

    .line 437
    return-void
.end method

.method private setUp()V
    .locals 3

    .prologue
    .line 229
    const-string/jumbo v0, "NightDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUp: currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 233
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/NightDisplayService;->setCoefficientMatrix(Landroid/content/Context;)V

    .line 238
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getColorTemperature()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService;->mMatrixNight:[F

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/NightDisplayService;->setMatrix(I[F)V

    .line 241
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/NightDisplayService;->onAutoModeChanged(I)V

    .line 244
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/NightDisplayService;->onActivated(Z)V

    .line 249
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/NightDisplayService;->applyTint(Z)V

    .line 250
    return-void
.end method

.method private tearDown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 253
    const-string/jumbo v0, "NightDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tearDown: currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 257
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/NightDisplayService$AutoMode;->onStop()V

    .line 262
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 267
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    .line 270
    :cond_2
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    .line 271
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 276
    :cond_0
    const-string/jumbo v1, "NightDisplayService"

    if-eqz p1, :cond_3

    const-string/jumbo v0, "Turning on night display"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    .line 280
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/NightDisplayService$AutoMode;->onActivated(Z)V

    .line 284
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/NightDisplayService;->applyTint(Z)V

    .line 286
    :cond_2
    return-void

    .line 276
    :cond_3
    const-string/jumbo v0, "Turning off night display"

    goto :goto_0
.end method

.method public onAutoModeChanged(I)V
    .locals 4
    .param p1, "autoMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 290
    const-string/jumbo v0, "NightDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAutoModeChanged: autoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/NightDisplayService$AutoMode;->onStop()V

    .line 294
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    .line 297
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 298
    new-instance v0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;-><init>(Lcom/android/server/display/NightDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    .line 303
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/NightDisplayService$AutoMode;->onStart()V

    .line 306
    :cond_2
    return-void

    .line 299
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 300
    new-instance v0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;-><init>(Lcom/android/server/display/NightDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    .prologue
    .line 140
    const/16 v2, 0x1f4

    if-lt p1, v2, :cond_0

    .line 142
    const-string/jumbo v2, "vrmanager"

    invoke-virtual {p0, v2}, Lcom/android/server/display/NightDisplayService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 141
    invoke-static {v2}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v1

    .line 143
    .local v1, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v1, :cond_0

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "vrManager":Landroid/service/vr/IVrManager;
    :cond_0
    :goto_0
    const/16 v2, 0x3e8

    if-lt p1, v2, :cond_1

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/NightDisplayService;->mBootCompleted:Z

    .line 156
    iget v2, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService;->setUp()V

    .line 160
    :cond_1
    return-void

    .line 146
    .restart local v1    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NightDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onColorTemperatureChanged(I)V
    .locals 1
    .param p1, "colorTemperature"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mMatrixNight:[F

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/NightDisplayService;->setMatrix(I[F)V

    .line 329
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/NightDisplayService;->applyTint(Z)V

    .line 330
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 3
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .prologue
    .line 319
    const-string/jumbo v0, "NightDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomEndTimeChanged: endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/NightDisplayService$AutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 324
    :cond_0
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 3
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .prologue
    .line 310
    const-string/jumbo v0, "NightDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomStartTimeChanged: startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/NightDisplayService$AutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 315
    :cond_0
    return-void
.end method

.method public onDisplayColorModeChanged(I)V
    .locals 3
    .param p1, "colorMode"    # I

    .prologue
    .line 334
    const-class v1, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v1}, Lcom/android/server/display/NightDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    .line 335
    .local v0, "dtm":Lcom/android/server/display/DisplayTransformManager;
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayTransformManager;->setColorMode(I)Z

    .line 337
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/NightDisplayService;->setCoefficientMatrix(Landroid/content/Context;)V

    .line 338
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getColorTemperature()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mMatrixNight:[F

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/NightDisplayService;->setMatrix(I[F)V

    .line 339
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/display/NightDisplayService;->applyTint(Z)V

    .line 342
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 166
    iget v0, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/display/NightDisplayService;->onUserChanged(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 182
    iget v0, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 183
    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/display/NightDisplayService;->onUserChanged(I)V

    .line 185
    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 175
    invoke-direct {p0, p1}, Lcom/android/server/display/NightDisplayService;->onUserChanged(I)V

    .line 176
    return-void
.end method
