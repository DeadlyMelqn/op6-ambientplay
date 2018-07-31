.class public Lcom/android/server/backup/params/BackupParams;
.super Ljava/lang/Object;
.source "BackupParams.java"


# instance fields
.field public dirName:Ljava/lang/String;

.field public fullPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public kvPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public nonIncrementalBackup:Z

.field public observer:Landroid/app/backup/IBackupObserver;

.field public transport:Lcom/android/internal/backup/IBackupTransport;

.field public userInitiated:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZZ)V
    .locals 0
    .param p1, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p2, "dirName"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p6, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p7, "userInitiated"    # Z
    .param p8, "nonIncrementalBackup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/backup/IBackupTransport;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/IBackupObserver;",
            "Landroid/app/backup/IBackupManagerMonitor;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, "kvPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "fullPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/backup/params/BackupParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 41
    iput-object p2, p0, Lcom/android/server/backup/params/BackupParams;->dirName:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/android/server/backup/params/BackupParams;->kvPackages:Ljava/util/ArrayList;

    .line 43
    iput-object p4, p0, Lcom/android/server/backup/params/BackupParams;->fullPackages:Ljava/util/ArrayList;

    .line 44
    iput-object p5, p0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    .line 45
    iput-object p6, p0, Lcom/android/server/backup/params/BackupParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 46
    iput-boolean p7, p0, Lcom/android/server/backup/params/BackupParams;->userInitiated:Z

    .line 47
    iput-boolean p8, p0, Lcom/android/server/backup/params/BackupParams;->nonIncrementalBackup:Z

    .line 48
    return-void
.end method
