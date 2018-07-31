.class Lcom/android/server/backup/restore/FullRestoreEngine$1;
.super Ljava/lang/Object;
.source "FullRestoreEngine.java"

# interfaces
.implements Lcom/android/server/backup/utils/BytesReadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/restore/FullRestoreEngine;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/restore/FullRestoreEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/restore/FullRestoreEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/restore/FullRestoreEngine;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine$1;->this$0:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onBytesRead(J)V
    .locals 5
    .param p1, "bytesRead"    # J

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine$1;->this$0:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-static {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->-get0(Lcom/android/server/backup/restore/FullRestoreEngine;)J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-static {v0, v2, v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->-set0(Lcom/android/server/backup/restore/FullRestoreEngine;J)J

    .line 158
    return-void
.end method
