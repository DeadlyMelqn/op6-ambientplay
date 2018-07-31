.class public Lcom/android/internal/content/NativeLibraryHelper$Handle;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/NativeLibraryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handle"
.end annotation


# instance fields
.field final apkHandles:[J

.field final debuggable:Z

.field final extractNativeLibs:Z

.field private volatile mClosed:Z

.field private final mGuard:Ldalvik/system/CloseGuard;

.field final multiArch:Z


# direct methods
.method constructor <init>([JZZZ)V
    .locals 2
    .param p1, "apkHandles"    # [J
    .param p2, "multiArch"    # Z
    .param p3, "extractNativeLibs"    # Z
    .param p4, "debuggable"    # Z

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    .line 123
    iput-object p1, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .line 124
    iput-boolean p2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    .line 125
    iput-boolean p3, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    .line 126
    iput-boolean p4, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    .line 127
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static create(Landroid/content/pm/PackageParser$Package;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 6
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getAllCodePaths()Ljava/util/List;

    move-result-object v4

    .line 92
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    move v0, v1

    .line 93
    :goto_0
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x10000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    move v3, v1

    .line 94
    :goto_1
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 91
    :goto_2
    invoke-static {v4, v0, v3, v1}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    :cond_1
    move v3, v2

    .line 93
    goto :goto_1

    :cond_2
    move v1, v2

    .line 94
    goto :goto_2
.end method

.method public static create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 4
    .param p0, "lite"    # Landroid/content/pm/PackageParser$PackageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/PackageParser$PackageLite;->multiArch:Z

    iget-boolean v2, p0, Landroid/content/pm/PackageParser$PackageLite;->extractNativeLibs:Z

    .line 99
    iget-boolean v3, p0, Landroid/content/pm/PackageParser$PackageLite;->debuggable:Z

    .line 98
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 5
    .param p0, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 84
    .local v1, "lite":Landroid/content/pm/PackageParser$PackageLite;
    invoke-static {v1}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 85
    .end local v1    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to parse package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static create(Ljava/util/List;ZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 10
    .param p1, "multiArch"    # Z
    .param p2, "extractNativeLibs"    # Z
    .param p3, "debuggable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZZ)",
            "Lcom/android/internal/content/NativeLibraryHelper$Handle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 105
    .local v4, "size":I
    new-array v0, v4, [J

    .line 106
    .local v0, "apkHandles":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 107
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 108
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/content/NativeLibraryHelper;->-wrap0(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v0, v1

    .line 109
    aget-wide v6, v0, v1

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 111
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 112
    aget-wide v6, v0, v2

    invoke-static {v6, v7}, Lcom/android/internal/content/NativeLibraryHelper;->-wrap1(J)V

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 114
    :cond_0
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to open APK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 106
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/android/internal/content/NativeLibraryHelper$Handle;

    invoke-direct {v5, v0, p1, p2, p3}, Lcom/android/internal/content/NativeLibraryHelper$Handle;-><init>([JZZZ)V

    return-object v5
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    .line 132
    iget-object v3, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-wide v0, v3, v2

    .line 133
    .local v0, "apkHandle":J
    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->-wrap1(J)V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "apkHandle":J
    :cond_0
    iget-object v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    .line 136
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mClosed:Z

    .line 137
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 145
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mClosed:Z

    if-nez v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 151
    return-void

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 148
    throw v0
.end method
