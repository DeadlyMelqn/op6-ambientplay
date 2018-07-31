.class final Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PendingTempWhitelist"
.end annotation


# instance fields
.field final duration:J

.field final tag:Ljava/lang/String;

.field final targetUid:I


# direct methods
.method constructor <init>(IJLjava/lang/String;)V
    .locals 0
    .param p1, "_targetUid"    # I
    .param p2, "_duration"    # J
    .param p4, "_tag"    # Ljava/lang/String;

    .prologue
    .line 1398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1399
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->targetUid:I

    .line 1400
    iput-wide p2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->duration:J

    .line 1401
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->tag:Ljava/lang/String;

    .line 1402
    return-void
.end method
