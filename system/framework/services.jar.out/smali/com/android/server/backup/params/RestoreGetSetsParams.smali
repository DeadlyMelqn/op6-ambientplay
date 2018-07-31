.class public Lcom/android/server/backup/params/RestoreGetSetsParams;
.super Ljava/lang/Object;
.source "RestoreGetSetsParams.java"


# instance fields
.field public monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public observer:Landroid/app/backup/IRestoreObserver;

.field public session:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method public constructor <init>(Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)V
    .locals 0
    .param p1, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p2, "_session"    # Lcom/android/server/backup/restore/ActiveRestoreSession;
    .param p3, "_observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "_monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 35
    iput-object p2, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 36
    iput-object p3, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 37
    iput-object p4, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 38
    return-void
.end method
