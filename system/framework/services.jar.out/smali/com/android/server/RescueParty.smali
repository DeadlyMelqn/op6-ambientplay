.class public Lcom/android/server/RescueParty;
.super Ljava/lang/Object;
.source "RescueParty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RescueParty$AppThreshold;,
        Lcom/android/server/RescueParty$BootThreshold;,
        Lcom/android/server/RescueParty$Threshold;
    }
.end annotation


# static fields
.field private static final LEVEL_FACTORY_RESET:I = 0x4

.field private static final LEVEL_NONE:I = 0x0

.field private static final LEVEL_RESET_SETTINGS_TRUSTED_DEFAULTS:I = 0x3

.field private static final LEVEL_RESET_SETTINGS_UNTRUSTED_CHANGES:I = 0x2

.field private static final LEVEL_RESET_SETTINGS_UNTRUSTED_DEFAULTS:I = 0x1

.field private static final PROP_DISABLE_RESCUE:Ljava/lang/String; = "persist.sys.disable_rescue"

.field private static final PROP_ENABLE_RESCUE:Ljava/lang/String; = "persist.sys.enable_rescue"

.field private static final PROP_RESCUE_BOOT_COUNT:Ljava/lang/String; = "sys.rescue_boot_count"

.field private static final PROP_RESCUE_BOOT_START:Ljava/lang/String; = "sys.rescue_boot_start"

.field private static final PROP_RESCUE_LEVEL:Ljava/lang/String; = "sys.rescue_level"

.field private static final PROP_VIRTUAL_DEVICE:Ljava/lang/String; = "ro.hardware.virtual_device"

.field private static final TAG:Ljava/lang/String; = "RescueParty"

.field private static sApps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/RescueParty$Threshold;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBoot:Lcom/android/server/RescueParty$Threshold;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/android/server/RescueParty$BootThreshold;

    invoke-direct {v0}, Lcom/android/server/RescueParty$BootThreshold;-><init>()V

    sput-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static executeRescueLevel(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 162
    const-string/jumbo v3, "sys.rescue_level"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, "level":I
    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    const-string/jumbo v3, "RescueParty"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attempting rescue level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->executeRescueLevelInternal(Landroid/content/Context;I)V

    .line 168
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeRescueSuccess(I)V

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Finished rescue level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "msg":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeRescueFailure(ILjava/lang/String;)V

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed rescue level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static executeRescueLevelInternal(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 180
    packed-switch p1, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 182
    :pswitch_0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;I)V

    goto :goto_0

    .line 185
    :pswitch_1
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;I)V

    goto :goto_0

    .line 188
    :pswitch_2
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;I)V

    goto :goto_0

    .line 191
    :pswitch_3
    const-string/jumbo v0, "RescueParty"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getAllUserIds()[I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 318
    const/4 v6, 0x1

    new-array v4, v6, [I

    aput v5, v4, v5

    .line 320
    .local v4, "userIds":[I
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v6, v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .local v0, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 323
    .local v3, "userId":I
    if-eqz v3, :cond_0

    .line 324
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 320
    .end local v3    # "userId":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 330
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "RescueParty"

    const-string/jumbo v6, "Trouble discovering users"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    return-object v4

    .line 326
    .restart local v0    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    .local v1, "ignored":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method private static incrementRescueLevel(I)V
    .locals 4
    .param p0, "triggerUid"    # I

    .prologue
    const/4 v3, 0x0

    .line 144
    const-string/jumbo v1, "sys.rescue_level"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 145
    const/4 v2, 0x4

    .line 143
    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 146
    .local v0, "level":I
    const-string/jumbo v1, "sys.rescue_level"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {v0, p0}, Lcom/android/server/EventLogTags;->writeRescueLevel(II)V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Incremented rescue level to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string/jumbo v2, " triggered by UID "

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->logCriticalInfo(ILjava/lang/String;)V

    .line 151
    return-void
.end method

.method public static isAttemptingFactoryReset()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 135
    const-string/jumbo v1, "sys.rescue_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isDisabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    const-string/jumbo v0, "persist.sys.enable_rescue"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    return v1

    .line 78
    :cond_0
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_1

    .line 79
    const-string/jumbo v0, "RescueParty"

    const-string/jumbo v1, "Disabled because of eng build"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return v2

    .line 86
    :cond_1
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/RescueParty;->isUsbActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    const-string/jumbo v0, "RescueParty"

    const-string/jumbo v1, "Disabled because of active USB connection"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v2

    .line 92
    :cond_2
    const-string/jumbo v0, "persist.sys.disable_rescue"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    const-string/jumbo v0, "RescueParty"

    const-string/jumbo v1, "Disabled because of manual property"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v2

    .line 97
    :cond_3
    return v1
.end method

.method private static isUsbActive()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 340
    const-string/jumbo v2, "ro.hardware.virtual_device"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    const-string/jumbo v2, "RescueParty"

    const-string/jumbo v3, "Assuming virtual device is connected over USB"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v2, 0x1

    return v2

    .line 346
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/sys/class/android_usb/android0/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ""

    const/16 v4, 0x80

    .line 345
    invoke-static {v2, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v2, "CONFIGURED"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "RescueParty"

    const-string/jumbo v3, "Failed to determine if device was on USB"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    return v5
.end method

.method private static levelToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 355
    packed-switch p0, :pswitch_data_0

    .line 361
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 356
    :pswitch_0
    const-string/jumbo v0, "NONE"

    return-object v0

    .line 357
    :pswitch_1
    const-string/jumbo v0, "RESET_SETTINGS_UNTRUSTED_DEFAULTS"

    return-object v0

    .line 358
    :pswitch_2
    const-string/jumbo v0, "RESET_SETTINGS_UNTRUSTED_CHANGES"

    return-object v0

    .line 359
    :pswitch_3
    const-string/jumbo v0, "RESET_SETTINGS_TRUSTED_DEFAULTS"

    return-object v0

    .line 360
    :pswitch_4
    const-string/jumbo v0, "FACTORY_RESET"

    return-object v0

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static noteBoot(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-static {}, Lcom/android/server/RescueParty;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->incrementAndTest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->reset()V

    .line 108
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    invoke-static {v0}, Lcom/android/server/RescueParty$Threshold;->-get0(Lcom/android/server/RescueParty$Threshold;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/RescueParty;->incrementRescueLevel(I)V

    .line 109
    invoke-static {p0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;)V

    .line 111
    :cond_1
    return-void
.end method

.method public static notePersistentAppCrash(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    .line 118
    invoke-static {}, Lcom/android/server/RescueParty;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 119
    :cond_0
    sget-object v1, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/RescueParty$Threshold;

    .line 120
    .local v0, "t":Lcom/android/server/RescueParty$Threshold;
    if-nez v0, :cond_1

    .line 121
    new-instance v0, Lcom/android/server/RescueParty$AppThreshold;

    .end local v0    # "t":Lcom/android/server/RescueParty$Threshold;
    invoke-direct {v0, p1}, Lcom/android/server/RescueParty$AppThreshold;-><init>(I)V

    .line 122
    .restart local v0    # "t":Lcom/android/server/RescueParty$Threshold;
    sget-object v1, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->incrementAndTest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->reset()V

    .line 126
    invoke-static {v0}, Lcom/android/server/RescueParty$Threshold;->-get0(Lcom/android/server/RescueParty$Threshold;)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/RescueParty;->incrementRescueLevel(I)V

    .line 127
    invoke-static {p0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;)V

    .line 129
    :cond_2
    return-void
.end method

.method public static onSettingsProviderPublished(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    invoke-static {p0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;)V

    .line 159
    return-void
.end method

.method private static resetAllSettings(Landroid/content/Context;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "res":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 202
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v1, v5, p1, v6}, Landroid/provider/Settings$Global;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0    # "res":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/android/server/RescueParty;->getAllUserIds()[I

    move-result-object v5

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_0

    aget v3, v5, v4

    .line 208
    .local v3, "userId":I
    const/4 v7, 0x0

    :try_start_1
    invoke-static {v1, v7, p1, v3}, Landroid/provider/Settings$Secure;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 203
    .end local v3    # "userId":I
    .restart local v0    # "res":Ljava/lang/Exception;
    :catch_0
    move-exception v2

    .line 204
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/RuntimeException;

    .end local v0    # "res":Ljava/lang/Exception;
    const-string/jumbo v5, "Failed to reset global settings"

    invoke-direct {v0, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .local v0, "res":Ljava/lang/Exception;
    goto :goto_0

    .line 209
    .end local v0    # "res":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v3    # "userId":I
    :catch_1
    move-exception v2

    .line 210
    .restart local v2    # "t":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to reset secure settings for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v0    # "res":Ljava/lang/Exception;
    goto :goto_2

    .line 213
    .end local v0    # "res":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "userId":I
    :cond_0
    if-eqz v0, :cond_1

    .line 214
    throw v0

    .line 216
    :cond_1
    return-void
.end method
