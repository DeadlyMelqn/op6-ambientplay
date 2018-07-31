.class Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;
.super Ljava/lang/Object;
.source "ForegroundServiceControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/ForegroundServiceControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserServices"
.end annotation


# instance fields
.field private mNotifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRunning:[Ljava/lang/String;

.field private mServiceStartTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->mRunning:[Ljava/lang/String;

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->mServiceStartTime:J

    .line 124
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->mNotifications:Landroid/util/ArrayMap;

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;)V
    .locals 0
    .param p1, "-this0"    # Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;-><init>()V

    return-void
.end method


# virtual methods
.method public addNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->mNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->mNotifications:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->mNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public isDungeonNeeded()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v2, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->mRunning:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->mServiceStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1388

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    .line 152
    iget-object v4, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->mRunning:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 153
    .local v0, "pkg":Ljava/lang/String;
    iget-object v6, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->mNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 154
    .local v1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 155
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 152
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2
    return v3
.end method

.method public removeNotification(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v2, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->mNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 138
    .local v1, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 139
    const/4 v0, 0x0

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 142
    .local v0, "found":Z
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->mNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setRunningServices([Ljava/lang/String;J)V
    .locals 2
    .param p1, "pkgs"    # [Ljava/lang/String;
    .param p2, "serviceStartTime"    # J

    .prologue
    const/4 v0, 0x0

    .line 126
    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_0
    iput-object v0, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->mRunning:[Ljava/lang/String;

    .line 127
    iput-wide p2, p0, Lcom/oneplus/aod/ForegroundServiceControllerImpl$UserServices;->mServiceStartTime:J

    .line 128
    return-void
.end method
