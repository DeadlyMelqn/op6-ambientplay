.class public final Lcom/oem/debug/OemManager;
.super Ljava/lang/Object;
.source "OemManager.java"


# static fields
.field public static final ANDROID_PANIC_TAG:Ljava/lang/String; = "SYSTEM_SERVER"

.field public static final ANDROID_PANIC_TAG_BEGIN:Ljava/lang/String; = "<android-panic-begin>\n"

.field public static final ANDROID_PANIC_TAG_END:Ljava/lang/String; = "<android-panic-end>\n"

.field private static DATA_SIZE:I = 0x0

.field private static final DEBUG:Z = true

.field public static final ENGINEERINGMODE_TEST_BEGIN:Ljava/lang/String; = "<engineeringmode-test-begin>\n"

.field public static final ENGINEERINGMODE_TEST_END:Ljava/lang/String; = "<engineeringmode-test-end>\n"

.field public static final ENGINEERINGMODE_TEST_TAG:Ljava/lang/String; = "ENGINEERINGMODE_TEST"

.field private static final INIT_TRY_TIMES:I = 0x3

.field public static final KERNEL_PANIC_TAG:Ljava/lang/String; = "SYSTEM_LAST_KMSG"

.field public static final KERNEL_PANIC_TAG_BEGIN:Ljava/lang/String; = "<kernel-panic-begin>\n"

.field public static final KERNEL_PANIC_TAG_END:Ljava/lang/String; = "<kernel-panic-end>\n"

.field public static final SERVICE_NAME:Ljava/lang/String; = "OEM"

.field public static final SHUTDOWN_TAG:Ljava/lang/String; = "SYSTEM_SHUTDOWN"

.field public static final SHUTDOWN_TAG_BEGIN:Ljava/lang/String; = "<shutdown-begin>\n"

.field public static final SHUTDOWN_TAG_END:Ljava/lang/String; = "<shutdown-end>\n"

.field public static final TAG:Ljava/lang/String; = "oemManager"

.field public static TYPE_LOGSIZE:I

.field public static TYPE_PANIC:I

.field public static TYPE_REBOOT:I

.field public static TYPE_SHUTDOWN:I

.field private static sService:Lcom/oem/os/IOemService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/oem/debug/OemManager;->TYPE_PANIC:I

    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/oem/debug/OemManager;->TYPE_SHUTDOWN:I

    .line 44
    const/4 v0, 0x2

    sput v0, Lcom/oem/debug/OemManager;->TYPE_REBOOT:I

    .line 45
    const/4 v0, 0x3

    sput v0, Lcom/oem/debug/OemManager;->TYPE_LOGSIZE:I

    .line 47
    const/16 v0, 0x10

    sput v0, Lcom/oem/debug/OemManager;->DATA_SIZE:I

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpShutdownMsg(Ljava/lang/String;)V
    .locals 11
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string/jumbo v8, "oemManager"

    const-string/jumbo v9, "dumpShutdownMsg e"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 75
    .local v5, "sf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v8, "ro.build.kernel.id"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "kid":Ljava/lang/String;
    if-nez p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 78
    :cond_0
    const-string/jumbo v8, "shutdown reason:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_1
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string/jumbo v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v8, "kernel id["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    .line 84
    .local v7, "t":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 86
    .local v0, "e":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v0

    if-ge v1, v8, :cond_2

    .line 87
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "msg":Ljava/lang/String;
    const-string/jumbo v8, "SYSTEM_SHUTDOWN"

    invoke-static {v3, v8}, Lcom/oem/debug/OemManager;->writeLogToPartition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 96
    .local v6, "size":I
    const-string/jumbo v8, "oemManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "write normal shutdown log size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget v8, Lcom/oem/debug/OemManager;->TYPE_SHUTDOWN:I

    invoke-static {v8}, Lcom/oem/debug/OemManager;->incrementCriticalData(I)I

    move-result v8

    if-gez v8, :cond_3

    .line 100
    const-string/jumbo v8, "oemManager"

    const-string/jumbo v9, "increment normal shutdown times failed!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_3
    return-void
.end method

.method public static incrementCriticalData(I)I
    .locals 6
    .param p0, "type"    # I

    .prologue
    .line 135
    const/4 v1, -0x1

    .line 136
    .local v1, "res":I
    if-gez p0, :cond_0

    .line 137
    return v1

    .line 140
    :cond_0
    sget v4, Lcom/oem/debug/OemManager;->DATA_SIZE:I

    invoke-static {p0, v4}, Lcom/oem/debug/OemManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "timesString":Ljava/lang/String;
    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v2, 0x0

    .line 144
    .local v2, "times":I
    :goto_0
    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/oem/debug/OemManager;->writeCriticalData(ILjava/lang/String;)I

    move-result v1

    .line 149
    .end local v2    # "times":I
    :goto_1
    return v1

    .line 142
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .restart local v2    # "times":I
    goto :goto_0

    .line 145
    .end local v2    # "times":I
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "oemManager"

    const-string/jumbo v5, "increment critical data failed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static final init()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    sget-object v1, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    if-eqz v1, :cond_0

    .line 27
    return v5

    .line 29
    :cond_0
    const/4 v0, 0x3

    .line 31
    .local v0, "times":I
    :cond_1
    const-string/jumbo v1, "oemManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Try to OEMService Instance! times = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string/jumbo v1, "OEM"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oem/os/IOemService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemService;

    move-result-object v1

    sput-object v1, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    .line 33
    sget-object v1, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    if-eqz v1, :cond_2

    .line 34
    return v5

    .line 36
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    .line 37
    return v4
.end method

.method public static readCriticalData(I)I
    .locals 5
    .param p0, "type"    # I

    .prologue
    .line 153
    const/4 v2, 0x0

    .line 154
    .local v2, "res":I
    sget v3, Lcom/oem/debug/OemManager;->DATA_SIZE:I

    invoke-static {p0, v3}, Lcom/oem/debug/OemManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 156
    :cond_0
    return v2

    .line 159
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 164
    :goto_0
    return v2

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "oemManager"

    const-string/jumbo v4, "read critical data failed!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static readCriticalData(II)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I
    .param p1, "size"    # I

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "res":Ljava/lang/String;
    sget-object v2, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/oem/debug/OemManager;->init()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 194
    return-object v1

    .line 197
    :cond_0
    :try_start_0
    sget-object v2, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    invoke-interface {v2, p0, p1}, Lcom/oem/os/IOemService;->readCriticalData(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 202
    .end local v1    # "res":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 198
    .restart local v1    # "res":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "oemManager"

    const-string/jumbo v3, "read Critical Data exception!\n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static readRawPartition(II)Ljava/lang/String;
    .locals 4
    .param p0, "offset"    # I
    .param p1, "size"    # I

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, "res":Ljava/lang/String;
    sget-object v2, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/oem/debug/OemManager;->init()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 107
    return-object v1

    .line 110
    :cond_0
    :try_start_0
    sget-object v2, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    invoke-interface {v2, p0, p1}, Lcom/oem/os/IOemService;->readRawPartition(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    .end local v1    # "res":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 111
    .restart local v1    # "res":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "oemManager"

    const-string/jumbo v3, "read Raw Partition exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeCriticalData(ILjava/lang/String;)I
    .locals 4
    .param p0, "id"    # I
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v1, -0x1

    .line 207
    .local v1, "res":I
    sget-object v2, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/oem/debug/OemManager;->init()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 208
    return v1

    .line 211
    :cond_0
    :try_start_0
    sget-object v2, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    invoke-interface {v2, p0, p1}, Lcom/oem/os/IOemService;->writeCriticalData(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 216
    :goto_0
    return v1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "oemManager"

    const-string/jumbo v3, "write Critical Data exception!\n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeLogToPartition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "logstring"    # Ljava/lang/String;
    .param p1, "tagString"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v1, -0x1

    .line 169
    .local v1, "res":I
    if-nez p0, :cond_0

    .line 170
    return v1

    .line 172
    :cond_0
    const-string/jumbo v2, ""

    .line 173
    .local v2, "tagbegin":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 174
    .local v3, "tagend":Ljava/lang/String;
    const-string/jumbo v4, "SYSTEM_SHUTDOWN"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    const-string/jumbo v2, "<shutdown-begin>\n"

    .line 176
    const-string/jumbo v3, "<shutdown-end>\n"

    .line 187
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "log":Ljava/lang/String;
    invoke-static {v0}, Lcom/oem/debug/OemManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v4

    return v4

    .line 177
    .end local v0    # "log":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "SYSTEM_LAST_KMSG"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    const-string/jumbo v2, "<kernel-panic-begin>\n"

    .line 179
    const-string/jumbo v3, "<kernel-panic-end>\n"

    goto :goto_0

    .line 180
    :cond_3
    const-string/jumbo v4, "SYSTEM_SERVER"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 181
    const-string/jumbo v2, "<android-panic-begin>\n"

    .line 182
    const-string/jumbo v3, "<android-panic-end>\n"

    goto :goto_0

    .line 183
    :cond_4
    const-string/jumbo v4, "ENGINEERINGMODE_TEST"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    const-string/jumbo v2, "<engineeringmode-test-begin>\n"

    .line 185
    const-string/jumbo v3, "<engineeringmode-test-end>\n"

    goto :goto_0
.end method

.method public static writeRawPartition(Ljava/lang/String;)I
    .locals 4
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v1, -0x1

    .line 120
    .local v1, "res":I
    sget-object v2, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/oem/debug/OemManager;->init()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 121
    return v1

    .line 124
    :cond_0
    :try_start_0
    sget-object v2, Lcom/oem/debug/OemManager;->sService:Lcom/oem/os/IOemService;

    invoke-interface {v2, p0}, Lcom/oem/os/IOemService;->writeRawPartition(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 129
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "oemManager"

    const-string/jumbo v3, "write Raw Partition exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
