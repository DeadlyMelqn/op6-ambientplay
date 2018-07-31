.class public Lorg/ifaa/android/manager/IFAAManagerFactory;
.super Lorg/ifaa/android/manager/IFAAManagerV2;
.source "IFAAManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ifaa/android/manager/IFAAManagerFactory$1;
    }
.end annotation


# static fields
.field private static final ACTIVITY_START_FAILED:I = -0x1

.field private static final ACTIVITY_START_SUCCESS:I = 0x0

.field private static final BIND_IFAASER_SERVICE_TIMEOUT:I = 0xbb8

.field private static final BIOTypeFingerprint:I = 0x1

.field private static final BIOTypeIris:I = 0x2

.field static final IFAA_SERVICE_CLASS:Ljava/lang/String; = "com.oneplus.ifaaservice.IFAAService"

.field static final IFAA_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field static final IFAA_SERVICE_PACKAGE:Ljava/lang/String; = "com.oneplus.ifaaservice"

.field private static final TAG:Ljava/lang/String; = "IFAAManagerFactory"

.field public static mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mIFAAService:Lcom/android/internal/app/IIFAAService;


# direct methods
.method static synthetic -get0(Lorg/ifaa/android/manager/IFAAManagerFactory;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "-this"    # Lorg/ifaa/android/manager/IFAAManagerFactory;

    .prologue
    iget-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get1(Lorg/ifaa/android/manager/IFAAManagerFactory;)Lcom/android/internal/app/IIFAAService;
    .locals 1
    .param p0, "-this"    # Lorg/ifaa/android/manager/IFAAManagerFactory;

    .prologue
    iget-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAService:Lcom/android/internal/app/IIFAAService;

    return-object v0
.end method

.method static synthetic -set0(Lorg/ifaa/android/manager/IFAAManagerFactory;Lcom/android/internal/app/IIFAAService;)Lcom/android/internal/app/IIFAAService;
    .locals 0
    .param p0, "-this"    # Lorg/ifaa/android/manager/IFAAManagerFactory;
    .param p1, "-value"    # Lcom/android/internal/app/IIFAAService;

    .prologue
    iput-object p1, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAService:Lcom/android/internal/app/IIFAAService;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    .line 30
    new-instance v0, Landroid/content/ComponentName;

    .line 31
    const-string/jumbo v1, "com.oneplus.ifaaservice"

    .line 32
    const-string/jumbo v2, "com.oneplus.ifaaservice.IFAAService"

    .line 30
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->IFAA_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/ifaa/android/manager/IFAAManagerV2;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAService:Lcom/android/internal/app/IIFAAService;

    .line 129
    new-instance v0, Lorg/ifaa/android/manager/IFAAManagerFactory$1;

    invoke-direct {v0, p0}, Lorg/ifaa/android/manager/IFAAManagerFactory$1;-><init>(Lorg/ifaa/android/manager/IFAAManagerFactory;)V

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mConnection:Landroid/content/ServiceConnection;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/ifaa/android/manager/IFAAManagerFactory;->ensureIfaaService(Landroid/content/Context;I)V

    .line 38
    return-void
.end method

.method private ensureIfaaService(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timedout"    # I

    .prologue
    .line 113
    iget-object v2, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAService:Lcom/android/internal/app/IIFAAService;

    if-nez v2, :cond_0

    .line 114
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lorg/ifaa/android/manager/IFAAManagerFactory;->IFAA_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 115
    .local v1, "service":Landroid/content/Intent;
    iget-object v2, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 116
    if-lez p2, :cond_0

    .line 117
    const-string/jumbo v2, "IFAAManagerFactory"

    const-string/jumbo v3, "Waiting for IFAAService connected"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v3

    .line 120
    :try_start_0
    iget-object v2, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mConnection:Landroid/content/ServiceConnection;

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    .line 127
    .end local v1    # "service":Landroid/content/Intent;
    :cond_0
    return-void

    .line 121
    .restart local v1    # "service":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v2, "IFAAManagerFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exception while binding IFAAService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getIFAAManager(Landroid/content/Context;I)Lorg/ifaa/android/manager/IFAAManagerV2;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authType"    # I

    .prologue
    .line 84
    const-string/jumbo v0, "IFAAManagerFactory"

    const-string/jumbo v1, "getIFAAManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lorg/ifaa/android/manager/IFAAManagerFactory;

    invoke-direct {v0, p0}, Lorg/ifaa/android/manager/IFAAManagerFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    .line 87
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    return-object v0

    .line 89
    :cond_0
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    return-object v0
.end method


# virtual methods
.method public getDeviceModel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    const-string/jumbo v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "DeviceModel":Ljava/lang/String;
    const-string/jumbo v1, "IFAAManagerFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "device model is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-eqz v0, :cond_6

    .line 65
    const-string/jumbo v1, "A3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "5801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "5811"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    const-string/jumbo v1, "ONEPLUS-A3000"

    return-object v1

    .line 67
    :cond_1
    const-string/jumbo v1, "A5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "6859"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "7801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    :cond_2
    const-string/jumbo v1, "ONEPLUS-A5000"

    return-object v1

    .line 69
    :cond_3
    const-string/jumbo v1, "A6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "7819"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 70
    :cond_4
    const-string/jumbo v1, "ONEPLUS-A6000"

    return-object v1

    .line 72
    :cond_5
    const-string/jumbo v1, "ONEPLUS-A5000"

    return-object v1

    .line 75
    :cond_6
    const-string/jumbo v1, "ONEPLUS-A5000"

    return-object v1
.end method

.method public getSupportBIOTypes(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string/jumbo v0, "IFAAManagerFactory"

    const-string/jumbo v1, "BIOTypeFingerprint1"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x2

    return v0
.end method

.method public processCmdV2(Landroid/content/Context;[B)[B
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # [B

    .prologue
    .line 94
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "IFAAManagerFactory"

    const-string/jumbo v3, "processCmdV2"

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "IFAAManagerFactory"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :cond_0
    const/4 v1, 0x0

    .line 100
    .local v1, "result":[B
    const/16 v2, 0xbb8

    invoke-direct {p0, p1, v2}, Lorg/ifaa/android/manager/IFAAManagerFactory;->ensureIfaaService(Landroid/content/Context;I)V

    .line 104
    :try_start_0
    iget-object v2, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAService:Lcom/android/internal/app/IIFAAService;

    invoke-interface {v2, p2}, Lcom/android/internal/app/IIFAAService;->processCmdV2([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 109
    .end local v1    # "result":[B
    :goto_0
    return-object v1

    .line 105
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "IFAAManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exception while invoking processCmdV2 of remote IFAAService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startBIOManager(Landroid/content/Context;I)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authType"    # I

    .prologue
    const/4 v5, 0x0

    .line 46
    :try_start_0
    const-string/jumbo v2, "IFAAManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBIOManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.Settings$SecuritySettingsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    const-string/jumbo v2, "IFAAManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OOS context"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    return v5

    .line 52
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    return v5

    .line 55
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v2

    .line 56
    return v5
.end method
