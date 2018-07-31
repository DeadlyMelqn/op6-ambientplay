.class public Lcom/android/server/backup/params/ClearParams;
.super Ljava/lang/Object;
.source "ClearParams.java"


# instance fields
.field public packageInfo:Landroid/content/pm/PackageInfo;

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method public constructor <init>(Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p1, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p2, "_info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/backup/params/ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 30
    iput-object p2, p0, Lcom/android/server/backup/params/ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 31
    return-void
.end method
