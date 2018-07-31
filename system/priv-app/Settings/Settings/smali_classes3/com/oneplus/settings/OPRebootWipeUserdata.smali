.class public Lcom/oneplus/settings/OPRebootWipeUserdata;
.super Ljava/lang/Object;
.source "OPRebootWipeUserdata.java"


# static fields
.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static COMMAND_FILE_OP2:Ljava/io/File; = null

.field private static LOG_FILE:Ljava/io/File; = null

.field private static LOG_FILE_OP2:Ljava/io/File; = null

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field private static RECOVERY_DIR_OP2:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "OPRebootWipeUserdata"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR:Ljava/io/File;

    .line 30
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPRebootWipeUserdata;->COMMAND_FILE:Ljava/io/File;

    .line 31
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPRebootWipeUserdata;->LOG_FILE:Ljava/io/File;

    .line 33
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/op2/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR_OP2:Ljava/io/File;

    .line 34
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR_OP2:Ljava/io/File;

    const-string/jumbo v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPRebootWipeUserdata;->COMMAND_FILE_OP2:Ljava/io/File;

    .line 35
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR_OP2:Ljava/io/File;

    const-string/jumbo v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPRebootWipeUserdata;->LOG_FILE_OP2:Ljava/io/File;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const-string/jumbo v6, "OPRebootWipeUserdata"

    const-string/jumbo v7, "bootCommand start"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportOP2Recovey()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    sget-object v6, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR_OP2:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 93
    sget-object v6, Lcom/oneplus/settings/OPRebootWipeUserdata;->COMMAND_FILE_OP2:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 94
    sget-object v6, Lcom/oneplus/settings/OPRebootWipeUserdata;->LOG_FILE_OP2:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 95
    new-instance v1, Ljava/io/FileWriter;

    sget-object v6, Lcom/oneplus/settings/OPRebootWipeUserdata;->COMMAND_FILE_OP2:Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 104
    .local v1, "command":Ljava/io/FileWriter;
    :goto_0
    const/4 v6, 0x0

    :try_start_0
    array-length v7, p1

    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v0, p1, v6

    .line 105
    .local v0, "arg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 106
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v8, "\n"

    invoke-virtual {v1, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 97
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "command":Ljava/io/FileWriter;
    :cond_1
    sget-object v6, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 98
    sget-object v6, Lcom/oneplus/settings/OPRebootWipeUserdata;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 99
    sget-object v6, Lcom/oneplus/settings/OPRebootWipeUserdata;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 100
    new-instance v1, Ljava/io/FileWriter;

    sget-object v6, Lcom/oneplus/settings/OPRebootWipeUserdata;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .restart local v1    # "command":Ljava/io/FileWriter;
    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 114
    :try_start_1
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 115
    .local v5, "service":Landroid/os/IBinder;
    const-string/jumbo v6, "OPRebootWipeUserdata"

    const-string/jumbo v7, "bootCommand get mount Service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {v5}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v3

    .line 117
    .local v3, "mountService":Landroid/os/storage/IStorageManager;
    const-string/jumbo v6, "SystemLocale"

    const-string/jumbo v7, ""

    invoke-interface {v3, v6, v7}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v6, "OPRebootWipeUserdata"

    const-string/jumbo v7, "bootCommand setField StorageManager.SYSTEM_LOCALE_KEY"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string/jumbo v6, "PatternVisible"

    const-string/jumbo v7, ""

    invoke-interface {v3, v6, v7}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v6, "OPRebootWipeUserdata"

    const-string/jumbo v7, "bootCommand setField StorageManager.PATTERN_VISIBLE_KEY"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo v6, "PasswordVisible"

    const-string/jumbo v7, ""

    invoke-interface {v3, v6, v7}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v6, "OPRebootWipeUserdata"

    const-string/jumbo v7, "bootCommand setField StorageManager.PASSWORD_VISIBLE_KEY"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    .end local v3    # "mountService":Landroid/os/storage/IStorageManager;
    .end local v5    # "service":Landroid/os/IBinder;
    :goto_2
    const-string/jumbo v6, "power"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 128
    .local v4, "pm":Landroid/os/PowerManager;
    const-string/jumbo v6, "recovery"

    invoke-virtual {v4, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 130
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Reboot failed (no permissions?)"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 110
    .end local v4    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v6

    .line 111
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 110
    throw v6

    .line 123
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wipeType"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 58
    .local v0, "condition":Landroid/os/ConditionVariable;
    const/4 v4, 0x0

    .line 59
    .local v4, "shutdownArg":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 60
    const-string/jumbo v4, "--shutdown_after"

    .line 63
    .end local v4    # "shutdownArg":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 64
    .local v3, "reasonArg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "--reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/oneplus/settings/OPRebootWipeUserdata;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    .end local v3    # "reasonArg":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "--locale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "localeArg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "--password="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "psword":Ljava/lang/String;
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    const/4 v6, 0x4

    aput-object v2, v5, v6

    invoke-static {p0, v5}, Lcom/oneplus/settings/OPRebootWipeUserdata;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private static sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3f

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 79
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 80
    return-object p0
.end method
