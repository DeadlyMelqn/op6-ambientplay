.class Lcom/android/server/backup/BackupManagerService$AdbBackupParams;
.super Lcom/android/server/backup/BackupManagerService$AdbParams;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbBackupParams"
.end annotation


# instance fields
.field public allApps:Z

.field public doCompress:Z

.field public doWidgets:Z

.field public includeApks:Z

.field public includeKeyValue:Z

.field public includeObbs:Z

.field public includeShared:Z

.field public includeSystem:Z

.field public packages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "saveApks"    # Z
    .param p4, "saveObbs"    # Z
    .param p5, "saveShared"    # Z
    .param p6, "alsoWidgets"    # Z
    .param p7, "doAllApps"    # Z
    .param p8, "doSystem"    # Z
    .param p9, "compress"    # Z
    .param p10, "doKeyValue"    # Z
    .param p11, "pkgList"    # [Ljava/lang/String;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$AdbParams;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 616
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 617
    iput-boolean p3, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->includeApks:Z

    .line 618
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->includeObbs:Z

    .line 619
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->includeShared:Z

    .line 620
    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->doWidgets:Z

    .line 621
    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->allApps:Z

    .line 622
    iput-boolean p8, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->includeSystem:Z

    .line 623
    iput-boolean p9, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->doCompress:Z

    .line 624
    iput-boolean p10, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->includeKeyValue:Z

    .line 625
    iput-object p11, p0, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;->packages:[Ljava/lang/String;

    .line 626
    return-void
.end method
