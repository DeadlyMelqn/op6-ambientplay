.class public Lcom/android/server/broadcastradio/BroadcastRadioService;
.super Lcom/android/server/SystemService;
.source "BroadcastRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeContext:J

.field private final mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/broadcastradio/BroadcastRadioService;

    .prologue
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/broadcastradio/BroadcastRadioService;

    .prologue
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/broadcastradio/BroadcastRadioService;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/broadcastradio/BroadcastRadioService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/broadcastradio/BroadcastRadioService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/broadcastradio/BroadcastRadioService;
    .param p1, "-value"    # Ljava/util/List;

    .prologue
    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/broadcastradio/BroadcastRadioService;JILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/Tuner;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/broadcastradio/BroadcastRadioService;
    .param p1, "nativeContext"    # J
    .param p3, "moduleId"    # I
    .param p4, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .param p5, "withAudio"    # Z
    .param p6, "callback"    # Landroid/hardware/radio/ITunerCallback;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/broadcastradio/BroadcastRadioService;->nativeOpenTuner(JILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/Tuner;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/broadcastradio/BroadcastRadioService;J)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/broadcastradio/BroadcastRadioService;
    .param p1, "nativeContext"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/broadcastradio/BroadcastRadioService;->nativeLoadModules(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    invoke-direct {v0, p0, v2}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    .line 38
    invoke-direct {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mNativeContext:J

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 41
    iput-object v2, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;

    .line 45
    return-void
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeLoadModules(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeOpenTuner(JILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/Tuner;
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->nativeFinalize(J)V

    .line 50
    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    .line 51
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 61
    const-string/jumbo v0, "broadcastradio"

    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 62
    return-void
.end method
