.class public Lcom/android/timezone/distro/StagedDistroOperation;
.super Ljava/lang/Object;
.source "StagedDistroOperation.java"


# static fields
.field private static final UNINSTALL_STAGED:Lcom/android/timezone/distro/StagedDistroOperation;


# instance fields
.field public final distroVersion:Lcom/android/timezone/distro/DistroVersion;

.field public final isUninstall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/android/timezone/distro/StagedDistroOperation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/timezone/distro/StagedDistroOperation;-><init>(ZLcom/android/timezone/distro/DistroVersion;)V

    .line 24
    sput-object v0, Lcom/android/timezone/distro/StagedDistroOperation;->UNINSTALL_STAGED:Lcom/android/timezone/distro/StagedDistroOperation;

    .line 22
    return-void
.end method

.method private constructor <init>(ZLcom/android/timezone/distro/DistroVersion;)V
    .locals 0
    .param p1, "isUninstall"    # Z
    .param p2, "distroVersion"    # Lcom/android/timezone/distro/DistroVersion;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    .line 32
    iput-object p2, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    .line 33
    return-void
.end method

.method public static install(Lcom/android/timezone/distro/DistroVersion;)Lcom/android/timezone/distro/StagedDistroOperation;
    .locals 2
    .param p0, "distroVersion"    # Lcom/android/timezone/distro/DistroVersion;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "distroVersion==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    new-instance v0, Lcom/android/timezone/distro/StagedDistroOperation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/timezone/distro/StagedDistroOperation;-><init>(ZLcom/android/timezone/distro/DistroVersion;)V

    return-object v0
.end method

.method public static uninstall()Lcom/android/timezone/distro/StagedDistroOperation;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/timezone/distro/StagedDistroOperation;->UNINSTALL_STAGED:Lcom/android/timezone/distro/StagedDistroOperation;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    if-ne p0, p1, :cond_0

    .line 49
    return v1

    .line 51
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/timezone/distro/StagedDistroOperation;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 52
    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 55
    check-cast v0, Lcom/android/timezone/distro/StagedDistroOperation;

    .line 57
    .local v0, "that":Lcom/android/timezone/distro/StagedDistroOperation;
    iget-boolean v3, p0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    iget-boolean v4, v0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    if-eq v3, v4, :cond_3

    .line 58
    return v2

    .line 60
    :cond_3
    iget-object v3, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    iget-object v2, v0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    invoke-virtual {v1, v2}, Lcom/android/timezone/distro/DistroVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_4
    :goto_0
    return v1

    .line 61
    :cond_5
    iget-object v3, v0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 66
    iget-boolean v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 67
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    invoke-virtual {v1}, Lcom/android/timezone/distro/DistroVersion;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v2, v1

    .line 68
    return v0

    .line 66
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":I
    goto :goto_0

    .line 67
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StagedDistroOperation{isUninstall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    iget-boolean v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    const-string/jumbo v1, ", distroVersion="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    const/16 v1, 0x7d

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
