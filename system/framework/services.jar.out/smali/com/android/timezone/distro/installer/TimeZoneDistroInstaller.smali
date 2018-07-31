.class public Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;
.super Ljava/lang/Object;
.source "TimeZoneDistroInstaller.java"


# static fields
.field private static final CURRENT_TZ_DATA_DIR_NAME:Ljava/lang/String; = "current"

.field public static final INSTALL_FAIL_BAD_DISTRO_FORMAT_VERSION:I = 0x2

.field public static final INSTALL_FAIL_BAD_DISTRO_STRUCTURE:I = 0x1

.field public static final INSTALL_FAIL_RULES_TOO_OLD:I = 0x3

.field public static final INSTALL_FAIL_VALIDATION_ERROR:I = 0x4

.field public static final INSTALL_SUCCESS:I = 0x0

.field private static final OLD_TZ_DATA_DIR_NAME:Ljava/lang/String; = "old"

.field private static final STAGED_TZ_DATA_DIR_NAME:Ljava/lang/String; = "staged"

.field public static final UNINSTALL_FAIL:I = 0x2

.field public static final UNINSTALL_NOTHING_INSTALLED:I = 0x1

.field public static final UNINSTALL_SUCCESS:I = 0x0

.field public static final UNINSTALL_TOMBSTONE_FILE_NAME:Ljava/lang/String; = "STAGED_UNINSTALL_TOMBSTONE"

.field private static final WORKING_DIR_NAME:Ljava/lang/String; = "working"


# instance fields
.field private final currentTzDataDir:Ljava/io/File;

.field private final logTag:Ljava/lang/String;

.field private final oldStagedDataDir:Ljava/io/File;

.field private final stagedTzDataDir:Ljava/io/File;

.field private final systemTzDataFile:Ljava/io/File;

.field private final workingDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "systemTzDataFile"    # Ljava/io/File;
    .param p3, "installDir"    # Ljava/io/File;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->systemTzDataFile:Ljava/io/File;

    .line 100
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "old"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    .line 101
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "staged"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    .line 102
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "current"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    .line 103
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "working"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    .line 104
    return-void
.end method

.method private checkDistroDataFilesExist(Ljava/io/File;)Z
    .locals 3
    .param p1, "unpackedContentDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v1, "Verifying distro contents"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 360
    const-string/jumbo v1, "tzdata"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 361
    const-string/jumbo v1, "icu/icu_tzdata.dat"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 359
    invoke-static {p1, v0}, Lcom/android/timezone/distro/FileUtils;->filesExist(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkDistroRulesNewerThanSystem(Ljava/io/File;Lcom/android/timezone/distro/DistroVersion;)Z
    .locals 6
    .param p1, "systemTzDataFile"    # Ljava/io/File;
    .param p2, "distroVersion"    # Lcom/android/timezone/distro/DistroVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v4, "Reading /system rules version"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {p0, p1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readSystemRulesVersion(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "systemRulesVersion":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    .line 388
    .local v1, "distroRulesVersion":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v0, 0x1

    .line 389
    .local v0, "canApply":Z
    :goto_0
    if-nez v0, :cond_1

    .line 390
    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed rules version check: distroRulesVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 391
    const-string/jumbo v5, ", systemRulesVersion="

    .line 390
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :goto_1
    return v0

    .line 388
    .end local v0    # "canApply":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "canApply":Z
    goto :goto_0

    .line 393
    :cond_1
    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Passed rules version check: distroRulesVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 394
    const-string/jumbo v5, ", systemRulesVersion="

    .line 393
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private deleteBestEffort(Ljava/io/File;)V
    .locals 4
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 341
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :try_start_0
    invoke-static {p1}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private readDistroVersion(Ljava/io/File;)Lcom/android/timezone/distro/DistroVersion;
    .locals 5
    .param p1, "distroDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Reading distro format version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "distro_version"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 367
    .local v0, "distroVersionFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    new-instance v2, Lcom/android/timezone/distro/DistroException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No distro version file found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 371
    :cond_0
    sget v2, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_FILE_LENGTH:I

    invoke-static {v0, v2}, Lcom/android/timezone/distro/FileUtils;->readBytes(Ljava/io/File;I)[B

    move-result-object v1

    .line 372
    .local v1, "versionBytes":[B
    invoke-static {v1}, Lcom/android/timezone/distro/DistroVersion;->fromBytes([B)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v2

    return-object v2
.end method

.method private readSystemRulesVersion(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p1, "systemTzDataFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v1, "tzdata file cannot be found in /system"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system tzdata does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_0
    invoke-static {p1}, Llibcore/util/ZoneInfoDB$TzData;->getRulesVersion(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private unpackDistro(Lcom/android/timezone/distro/TimeZoneDistro;Ljava/io/File;)V
    .locals 3
    .param p1, "distro"    # Lcom/android/timezone/distro/TimeZoneDistro;
    .param p2, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unpacking update content to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {p1, p2}, Lcom/android/timezone/distro/TimeZoneDistro;->extractTo(Ljava/io/File;)V

    .line 355
    return-void
.end method


# virtual methods
.method getCurrentTzDataDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getInstalledDistroVersion()Lcom/android/timezone/distro/DistroVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    return-object v0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v0

    return-object v0
.end method

.method getOldStagedDataDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getStagedDistroOperation()Lcom/android/timezone/distro/StagedDistroOperation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    return-object v0

    .line 323
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    const-string/jumbo v2, "STAGED_UNINSTALL_TOMBSTONE"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-static {}, Lcom/android/timezone/distro/StagedDistroOperation;->uninstall()Lcom/android/timezone/distro/StagedDistroOperation;

    move-result-object v0

    return-object v0

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v0

    invoke-static {v0}, Lcom/android/timezone/distro/StagedDistroOperation;->install(Lcom/android/timezone/distro/DistroVersion;)Lcom/android/timezone/distro/StagedDistroOperation;

    move-result-object v0

    return-object v0
.end method

.method getStagedTzDataDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getSystemRulesVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->systemTzDataFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readSystemRulesVersion(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWorkingDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    return-object v0
.end method

.method public install(Lcom/android/timezone/distro/TimeZoneDistro;)Z
    .locals 2
    .param p1, "distro"    # Lcom/android/timezone/distro/TimeZoneDistro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stageInstallWithErrorCode(Lcom/android/timezone/distro/TimeZoneDistro;)I

    move-result v0

    .line 135
    .local v0, "result":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public stageInstallWithErrorCode(Lcom/android/timezone/distro/TimeZoneDistro;)I
    .locals 12
    .param p1, "distro"    # Lcom/android/timezone/distro/TimeZoneDistro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    .line 145
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 146
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v7}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 148
    :cond_0
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 149
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v7}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 152
    :cond_1
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v8, "Unpacking / verifying time zone update"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_0
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, p1, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->unpackDistro(Lcom/android/timezone/distro/TimeZoneDistro;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    :try_start_1
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Lcom/android/timezone/distro/DistroVersion;
    :try_end_1
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 163
    .local v0, "distroVersion":Lcom/android/timezone/distro/DistroVersion;
    if-nez v0, :cond_2

    .line 164
    :try_start_2
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v8, "Update not applied: Distro version could not be loaded"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 236
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 237
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 165
    return v10

    .line 159
    .end local v0    # "distroVersion":Lcom/android/timezone/distro/DistroVersion;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Lcom/android/timezone/distro/DistroException;
    :try_start_3
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid distro version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/timezone/distro/DistroException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 236
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 237
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 161
    return v10

    .line 167
    .end local v1    # "e":Lcom/android/timezone/distro/DistroException;
    .restart local v0    # "distroVersion":Lcom/android/timezone/distro/DistroVersion;
    :cond_2
    :try_start_4
    invoke-static {v0}, Lcom/android/timezone/distro/DistroVersion;->isCompatibleWithThisDevice(Lcom/android/timezone/distro/DistroVersion;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 168
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Update not applied: Distro format version check failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 170
    const/4 v7, 0x2

    .line 236
    iget-object v8, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v8}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 237
    iget-object v8, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v8}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 170
    return v7

    .line 173
    :cond_3
    :try_start_5
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->checkDistroDataFilesExist(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 174
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v8, "Update not applied: Distro is missing required data file(s)"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 236
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 237
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 175
    return v10

    .line 178
    :cond_4
    :try_start_6
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->systemTzDataFile:Ljava/io/File;

    invoke-direct {p0, v7, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->checkDistroRulesNewerThanSystem(Ljava/io/File;Lcom/android/timezone/distro/DistroVersion;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 179
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v8, "Update not applied: Distro rules version check failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 180
    const/4 v7, 0x3

    .line 236
    iget-object v8, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v8}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 237
    iget-object v8, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v8}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 180
    return v7

    .line 184
    :cond_5
    :try_start_7
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string/jumbo v8, "tzdata"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    .local v6, "zoneInfoFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Llibcore/util/ZoneInfoDB$TzData;->loadTzData(Ljava/lang/String;)Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v4

    .line 186
    .local v4, "tzData":Llibcore/util/ZoneInfoDB$TzData;
    if-nez v4, :cond_6

    .line 187
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Update not applied: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " could not be loaded"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 236
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 237
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 188
    return v11

    .line 191
    :cond_6
    :try_start_8
    invoke-virtual {v4}, Llibcore/util/ZoneInfoDB$TzData;->validate()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 196
    :try_start_9
    invoke-virtual {v4}, Llibcore/util/ZoneInfoDB$TzData;->close()V

    .line 200
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string/jumbo v8, "tzlookup.xml"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    .local v5, "tzLookupFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_7

    .line 202
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Update not applied: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 236
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 237
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 203
    return v10

    .line 192
    .end local v5    # "tzLookupFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 193
    .local v2, "e":Ljava/io/IOException;
    :try_start_a
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Update not applied: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " failed validation"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 196
    :try_start_b
    invoke-virtual {v4}, Llibcore/util/ZoneInfoDB$TzData;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 236
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 237
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 194
    return v11

    .line 195
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 196
    :try_start_c
    invoke-virtual {v4}, Llibcore/util/ZoneInfoDB$TzData;->close()V

    .line 195
    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 235
    .end local v0    # "distroVersion":Lcom/android/timezone/distro/DistroVersion;
    .end local v4    # "tzData":Llibcore/util/ZoneInfoDB$TzData;
    .end local v6    # "zoneInfoFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    .line 236
    iget-object v8, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v8}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 237
    iget-object v8, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v8}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 235
    throw v7

    .line 207
    .restart local v0    # "distroVersion":Lcom/android/timezone/distro/DistroVersion;
    .restart local v4    # "tzData":Llibcore/util/ZoneInfoDB$TzData;
    .restart local v5    # "tzLookupFile":Ljava/io/File;
    .restart local v6    # "zoneInfoFile":Ljava/io/File;
    :cond_7
    :try_start_d
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Llibcore/util/TimeZoneFinder;->createInstance(Ljava/lang/String;)Llibcore/util/TimeZoneFinder;

    move-result-object v3

    .line 208
    .local v3, "timeZoneFinder":Llibcore/util/TimeZoneFinder;
    invoke-virtual {v3}, Llibcore/util/TimeZoneFinder;->validate()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 217
    :try_start_e
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v8, "Applying time zone update"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v7}, Lcom/android/timezone/distro/FileUtils;->makeDirectoryWorldAccessible(Ljava/io/File;)V

    .line 221
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8

    .line 222
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Nothing to unstage at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_0
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Moving "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    iget-object v8, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-static {v7, v8}, Lcom/android/timezone/distro/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 233
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Install staged: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " successfully created"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 234
    const/4 v7, 0x0

    .line 236
    iget-object v8, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v8}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 237
    iget-object v8, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v8}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 234
    return v7

    .line 209
    .end local v3    # "timeZoneFinder":Llibcore/util/TimeZoneFinder;
    :catch_2
    move-exception v2

    .line 210
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_f
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Update not applied: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " failed validation"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 236
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 237
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 211
    return v11

    .line 224
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "timeZoneFinder":Llibcore/util/TimeZoneFinder;
    :cond_8
    :try_start_10
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Moving "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    iget-object v8, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v7, v8}, Lcom/android/timezone/distro/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_0
.end method

.method public stageUninstall()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 254
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v1, "Uninstalling time zone update"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 266
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Nothing to unstage at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Nothing to uninstall at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 294
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 279
    return v3

    .line 269
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Moving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/timezone/distro/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    .line 293
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 294
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 292
    throw v0

    .line 283
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 284
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string/jumbo v2, "STAGED_UNINSTALL_TOMBSTONE"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/timezone/distro/FileUtils;->createEmptyFile(Ljava/io/File;)V

    .line 287
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Moving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/timezone/distro/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 289
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uninstall staged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " successfully created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    const/4 v0, 0x0

    .line 293
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 294
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 291
    return v0
.end method
