.class public Lcom/android/server/backup/params/RestoreParams;
.super Ljava/lang/Object;
.source "RestoreParams.java"


# instance fields
.field public dirName:Ljava/lang/String;

.field public filterSet:[Ljava/lang/String;

.field public isSystemRestore:Z

.field public monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public observer:Landroid/app/backup/IRestoreObserver;

.field public pkgInfo:Landroid/content/pm/PackageInfo;

.field public pmToken:I

.field public token:J

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method public constructor <init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J)V
    .locals 3
    .param p1, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p2, "_dirName"    # Ljava/lang/String;
    .param p3, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "_monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "_token"    # J

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/server/backup/params/RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 76
    iput-object p2, p0, Lcom/android/server/backup/params/RestoreParams;->dirName:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 78
    iput-object p4, p0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 79
    iput-wide p5, p0, Lcom/android/server/backup/params/RestoreParams;->token:J

    .line 80
    iput-object v1, p0, Lcom/android/server/backup/params/RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    .line 83
    iput-object v1, p0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;)V
    .locals 1
    .param p1, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p2, "_dirName"    # Ljava/lang/String;
    .param p3, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "_monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "_token"    # J
    .param p7, "_pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/backup/params/RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 43
    iput-object p2, p0, Lcom/android/server/backup/params/RestoreParams;->dirName:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 45
    iput-object p4, p0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 46
    iput-wide p5, p0, Lcom/android/server/backup/params/RestoreParams;->token:J

    .line 47
    iput-object p7, p0, Lcom/android/server/backup/params/RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 48
    iput v0, p0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    .line 49
    iput-boolean v0, p0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLjava/lang/String;I)V
    .locals 3
    .param p1, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p2, "_dirName"    # Ljava/lang/String;
    .param p3, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "_monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "_token"    # J
    .param p7, "_pkgName"    # Ljava/lang/String;
    .param p8, "_pmToken"    # I

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/backup/params/RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 59
    iput-object p2, p0, Lcom/android/server/backup/params/RestoreParams;->dirName:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 61
    iput-object p4, p0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 62
    iput-wide p5, p0, Lcom/android/server/backup/params/RestoreParams;->token:J

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/params/RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 64
    iput p8, p0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    .line 65
    iput-boolean v1, p0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p7, v0, v1

    iput-object v0, p0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p2, "_dirName"    # Ljava/lang/String;
    .param p3, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "_monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "_token"    # J
    .param p7, "_filterSet"    # [Ljava/lang/String;
    .param p8, "_isSystemRestore"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/server/backup/params/RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 94
    iput-object p2, p0, Lcom/android/server/backup/params/RestoreParams;->dirName:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 96
    iput-object p4, p0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 97
    iput-wide p5, p0, Lcom/android/server/backup/params/RestoreParams;->token:J

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/params/RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    .line 100
    iput-boolean p8, p0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    .line 101
    iput-object p7, p0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    .line 102
    return-void
.end method
