.class public Lcom/oneplus/aod/NotificationCollectorService;
.super Ljava/lang/Object;
.source "NotificationCollectorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/NotificationCollectorService$1;,
        Lcom/oneplus/aod/NotificationCollectorService$2;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

.field private mCallBack:Lcom/oneplus/aod/AodUpdateMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationListenerService:Landroid/service/notification/NotificationListenerService;

.field private mNotificationManager:Lcom/oneplus/aod/NotificationManager;

.field private mRegisted:Z


# direct methods
.method static synthetic -get0(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationCollectorService;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationCollectorService;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/service/notification/NotificationListenerService;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationCollectorService;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mNotificationListenerService:Landroid/service/notification/NotificationListenerService;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/aod/NotificationCollectorService;)Lcom/oneplus/aod/NotificationManager;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationCollectorService;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mNotificationManager:Lcom/oneplus/aod/NotificationManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/aod/NotificationCollectorService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationCollectorService;

    .prologue
    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mRegisted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/aod/NotificationCollectorService;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationCollectorService;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationCollectorService;->mRegisted:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "NotificationCollectorService"

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/oneplus/aod/NotificationCollectorService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/NotificationCollectorService$1;-><init>(Lcom/oneplus/aod/NotificationCollectorService;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mCallBack:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 75
    new-instance v0, Lcom/oneplus/aod/NotificationCollectorService$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/NotificationCollectorService$2;-><init>(Lcom/oneplus/aod/NotificationCollectorService;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mNotificationListenerService:Landroid/service/notification/NotificationListenerService;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aodUpdateMonitor"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "NotificationCollectorService"

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/oneplus/aod/NotificationCollectorService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/NotificationCollectorService$1;-><init>(Lcom/oneplus/aod/NotificationCollectorService;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mCallBack:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 75
    new-instance v0, Lcom/oneplus/aod/NotificationCollectorService$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/NotificationCollectorService$2;-><init>(Lcom/oneplus/aod/NotificationCollectorService;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mNotificationListenerService:Landroid/service/notification/NotificationListenerService;

    .line 39
    iput-object p2, p0, Lcom/oneplus/aod/NotificationCollectorService;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    .line 40
    new-instance v0, Lcom/oneplus/aod/NotificationManager;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/aod/NotificationManager;-><init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mNotificationManager:Lcom/oneplus/aod/NotificationManager;

    .line 41
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationCollectorService;->mNotificationManager:Lcom/oneplus/aod/NotificationManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->setNotificationManager(Lcom/oneplus/aod/NotificationManager;)V

    .line 42
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationCollectorService;->mCallBack:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->registerCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V

    .line 43
    iput-object p1, p0, Lcom/oneplus/aod/NotificationCollectorService;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method
