.class public Lcom/android/server/updates/TzDataInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "TzDataInstallReceiver.java"


# static fields
.field private static final SYSTEM_TZ_DATA_FILE:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "TZDataInstallReceiver"

.field private static final TZ_DATA_DIR:Ljava/io/File;

.field private static final UPDATE_CONTENT_FILE_NAME:Ljava/lang/String; = "tzdata_distro.zip"

.field private static final UPDATE_DIR_NAME:Ljava/lang/String;

.field private static final UPDATE_METADATA_DIR_NAME:Ljava/lang/String; = "metadata/"

.field private static final UPDATE_VERSION_FILE_NAME:Ljava/lang/String; = "version"


# instance fields
.field private final installer:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/usr/share/zoneinfo/tzdata"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/updates/TzDataInstallReceiver;->SYSTEM_TZ_DATA_FILE:Ljava/io/File;

    .line 35
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/misc/zoneinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/updates/TzDataInstallReceiver;->TZ_DATA_DIR:Ljava/io/File;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/updates/TzDataInstallReceiver;->TZ_DATA_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/updates/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/updates/TzDataInstallReceiver;->UPDATE_DIR_NAME:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 44
    sget-object v0, Lcom/android/server/updates/TzDataInstallReceiver;->UPDATE_DIR_NAME:Ljava/lang/String;

    const-string/jumbo v1, "tzdata_distro.zip"

    const-string/jumbo v2, "metadata/"

    .line 45
    const-string/jumbo v3, "version"

    .line 44
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    const-string/jumbo v1, "TZDataInstallReceiver"

    sget-object v2, Lcom/android/server/updates/TzDataInstallReceiver;->SYSTEM_TZ_DATA_FILE:Ljava/io/File;

    sget-object v3, Lcom/android/server/updates/TzDataInstallReceiver;->TZ_DATA_DIR:Ljava/io/File;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/updates/TzDataInstallReceiver;->installer:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    .line 47
    return-void
.end method


# virtual methods
.method protected install([BI)V
    .locals 5
    .param p1, "content"    # [B
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/android/timezone/distro/TimeZoneDistro;

    invoke-direct {v0, p1}, Lcom/android/timezone/distro/TimeZoneDistro;-><init>([B)V

    .line 52
    .local v0, "distro":Lcom/android/timezone/distro/TimeZoneDistro;
    iget-object v2, p0, Lcom/android/server/updates/TzDataInstallReceiver;->installer:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    invoke-virtual {v2, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->install(Lcom/android/timezone/distro/TimeZoneDistro;)Z

    move-result v1

    .line 53
    .local v1, "valid":Z
    const-string/jumbo v2, "TZDataInstallReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Timezone data install valid for this device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-super {p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->install([BI)V

    .line 57
    return-void
.end method
