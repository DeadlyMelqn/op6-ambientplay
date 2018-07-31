.class public final Lcom/android/server/notification/NotificationManagerService$DumpFilter;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DumpFilter"
.end annotation


# instance fields
.field public filtered:Z

.field public pkgFilter:Ljava/lang/String;

.field public proto:Z

.field public redact:Z

.field public since:J

.field public stats:Z

.field public zen:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6440
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    .line 6445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    .line 6446
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    .line 6439
    return-void
.end method

.method public static parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 6449
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    invoke-direct {v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;-><init>()V

    .line 6450
    .local v2, "filter":Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    const/4 v1, 0x0

    .local v1, "ai":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_a

    .line 6451
    aget-object v0, p0, v1

    .line 6452
    .local v0, "a":Ljava/lang/String;
    const-string/jumbo v3, "--proto"

    aget-object v4, p0, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6453
    iput-boolean v6, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    .line 6455
    :cond_0
    const-string/jumbo v3, "--noredact"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "--reveal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6456
    :cond_1
    iput-boolean v7, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    .line 6450
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6457
    :cond_3
    const-string/jumbo v3, "p"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "pkg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "--package"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6458
    :cond_4
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 6459
    add-int/lit8 v1, v1, 0x1

    .line 6460
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    .line 6461
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6462
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    goto :goto_1

    .line 6464
    :cond_5
    iput-boolean v6, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    goto :goto_1

    .line 6467
    :cond_6
    const-string/jumbo v3, "--zen"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "zen"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6468
    :cond_7
    iput-boolean v6, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    .line 6469
    iput-boolean v6, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    goto :goto_1

    .line 6470
    :cond_8
    const-string/jumbo v3, "--stats"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6471
    iput-boolean v6, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    .line 6472
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_9

    .line 6473
    add-int/lit8 v1, v1, 0x1

    .line 6474
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto :goto_1

    .line 6476
    :cond_9
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto :goto_1

    .line 6480
    .end local v0    # "a":Ljava/lang/String;
    :cond_a
    return-object v2
.end method


# virtual methods
.method public matches(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x1

    .line 6490
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-nez v1, :cond_0

    return v0

    .line 6491
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v0, 0x1

    .line 6484
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-nez v1, :cond_0

    return v0

    .line 6485
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_3

    .line 6486
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 6485
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 6495
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-nez v1, :cond_0

    return v0

    .line 6496
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 6501
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stats"

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "zen"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
