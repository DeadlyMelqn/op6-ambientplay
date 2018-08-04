.class public Lcom/android/systemui/qs/tiles/CaffeineTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "CaffeineTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static DURATIONS:[I


# instance fields
.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDuration:I

.field public mLastClickTime:J

.field private final mReceiver:Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;

.field private mSecondsRemaining:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/CaffeineTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/CaffeineTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/CaffeineTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/CaffeineTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/CaffeineTile;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/CaffeineTile;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mSecondsRemaining:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/CaffeineTile;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/CaffeineTile;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->stopCountDown()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    const/16 v0, 0x12c

    .line 46
    const/16 v1, 0x258

    .line 47
    const/16 v2, 0x708

    .line 48
    const/4 v3, -0x1

    .line 44
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/CaffeineTile;->DURATIONS:[I

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 50
    iput-object v2, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mLastClickTime:J

    .line 52
    new-instance v0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;-><init>(Lcom/android/systemui/qs/tiles/CaffeineTile;Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mReceiver:Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 58
    const-string/jumbo v1, "CaffeineTile"

    const/16 v2, 0x1a

    .line 57
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mReceiver:Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->init()V

    .line 60
    return-void
.end method

.method private formatValueWithRemainingTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    iget v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mSecondsRemaining:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 173
    const-string/jumbo v0, "\u221e"

    return-object v0

    .line 175
    :cond_0
    const-string/jumbo v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 176
    iget v2, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mSecondsRemaining:I

    div-int/lit8 v2, v2, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mSecondsRemaining:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 175
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startCountDown(J)V
    .locals 7
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->stopCountDown()V

    .line 141
    long-to-int v0, p1

    iput v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mSecondsRemaining:I

    .line 142
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 144
    return-void

    .line 146
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/CaffeineTile$1;

    mul-long v2, p1, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/tiles/CaffeineTile$1;-><init>(Lcom/android/systemui/qs/tiles/CaffeineTile;JJ)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/CaffeineTile$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 162
    return-void
.end method

.method private stopCountDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 167
    iput-object v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 136
    const/16 v0, 0xc6

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1103b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mLastClickTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 89
    iget v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    .line 90
    iget v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    sget-object v1, Lcom/android/systemui/qs/tiles/CaffeineTile;->DURATIONS:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->stopCountDown()V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 115
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mLastClickTime:J

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->refreshState()V

    .line 117
    return-void

    .line 99
    :cond_1
    sget-object v0, Lcom/android/systemui/qs/tiles/CaffeineTile;->DURATIONS:[I

    iget v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    aget v0, v0, v1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->startCountDown(J)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->stopCountDown()V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    .line 112
    sget-object v0, Lcom/android/systemui/qs/tiles/CaffeineTile;->DURATIONS:[I

    iget v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    aget v0, v0, v1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->startCountDown(J)V

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->stopCountDown()V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mReceiver:Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->destroy()V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 75
    :cond_0
    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->handleClick()V

    .line 127
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 79
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 182
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->formatValueWithRemainingTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 184
    const v0, 0x7f080196

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mContext:Landroid/content/Context;

    .line 186
    const v1, 0x7f11009e

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 187
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 195
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1103b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 190
    const v0, 0x7f080195

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 191
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mContext:Landroid/content/Context;

    .line 192
    const v1, 0x7f11009d

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 193
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 179
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CaffeineTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
