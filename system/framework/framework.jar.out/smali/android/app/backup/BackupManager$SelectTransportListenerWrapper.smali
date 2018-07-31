.class Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;
.super Landroid/app/backup/ISelectBackupTransportCallback$Stub;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectTransportListenerWrapper"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/app/backup/SelectBackupTransportCallback;

.field final synthetic this$0:Landroid/app/backup/BackupManager;


# direct methods
.method static synthetic -get0(Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;)Landroid/app/backup/SelectBackupTransportCallback;
    .locals 1
    .param p0, "-this"    # Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

    .prologue
    iget-object v0, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->mListener:Landroid/app/backup/SelectBackupTransportCallback;

    return-object v0
.end method

.method constructor <init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/SelectBackupTransportCallback;)V
    .locals 2
    .param p1, "this$0"    # Landroid/app/backup/BackupManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/app/backup/SelectBackupTransportCallback;

    .prologue
    .line 716
    iput-object p1, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->this$0:Landroid/app/backup/BackupManager;

    invoke-direct {p0}, Landroid/app/backup/ISelectBackupTransportCallback$Stub;-><init>()V

    .line 717
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->mHandler:Landroid/os/Handler;

    .line 718
    iput-object p3, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->mListener:Landroid/app/backup/SelectBackupTransportCallback;

    .line 719
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 733
    iget-object v0, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$2;

    invoke-direct {v1, p0, p1}, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$2;-><init>(Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 739
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 723
    iget-object v0, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$1;

    invoke-direct {v1, p0, p1}, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$1;-><init>(Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 729
    return-void
.end method