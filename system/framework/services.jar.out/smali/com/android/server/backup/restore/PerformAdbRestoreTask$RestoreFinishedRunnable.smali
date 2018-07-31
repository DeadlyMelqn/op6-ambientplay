.class Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/PerformAdbRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestoreFinishedRunnable"
.end annotation


# instance fields
.field private final mAgent:Landroid/app/IBackupAgent;

.field private final mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

.field private final mToken:I


# direct methods
.method constructor <init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/RefactoredBackupManagerService;)V
    .locals 0
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "token"    # I
    .param p3, "backupManagerService"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mAgent:Landroid/app/IBackupAgent;

    .line 115
    iput p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mToken:I

    .line 116
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 117
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mAgent:Landroid/app/IBackupAgent;

    iget v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mToken:I

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
