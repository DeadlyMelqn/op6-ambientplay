.class public Lcom/android/server/secrecy/SecrecyService;
.super Lcom/android/server/SystemService;
.source "SecrecyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/secrecy/SecrecyService$ClientRecord;,
        Lcom/android/server/secrecy/SecrecyService$LocalService;,
        Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final SECRECY_SUPPORT_FEATURE:Ljava/lang/String; = "oem.secrecy.support"

.field public static final TAG:Ljava/lang/String; = "SecrecyService"


# instance fields
.field private mActivityEncryptWork:Lcom/android/server/secrecy/work/ActivityEncryptWork;

.field private final mClientRecordMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/secrecy/SecrecyService$ClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mLogEncryptWork:Lcom/android/server/secrecy/work/LogEncryptWork;

.field private mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

.field private mSecrecySupport:Z

.field private final mServiceThread:Lcom/android/server/ServiceThread;

.field private mSystemReady:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/secrecy/SecrecyService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/secrecy/SecrecyService;

    .prologue
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mClientRecordMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/secrecy/SecrecyService;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/secrecy/SecrecyService;

    .prologue
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/secrecy/SecrecyService;)Lcom/android/server/secrecy/policy/PolicyManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/secrecy/SecrecyService;

    .prologue
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/secrecy/SecrecyService;Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/secrecy/SecrecyService;
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/secrecy/SecrecyService;->isInActivityConfig(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/secrecy/SecrecyService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/secrecy/SecrecyService;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/secrecy/SecrecyService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/secrecy/SecrecyService;->DEBUG:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mClientRecordMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    iput-object p1, p0, Lcom/android/server/secrecy/SecrecyService;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "SecrecyService"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mServiceThread:Lcom/android/server/ServiceThread;

    .line 101
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.secrecy.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/secrecy/SecrecyService;->setSecrecySupport(Z)V

    .line 103
    invoke-direct {p0}, Lcom/android/server/secrecy/SecrecyService;->initPolicy()V

    .line 104
    invoke-direct {p0}, Lcom/android/server/secrecy/SecrecyService;->initWorks()V

    .line 105
    return-void
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 254
    const/4 v3, 0x0

    .line 255
    .local v3, "dumpAll":Z
    const/4 v8, 0x0

    .line 257
    .local v8, "opti":I
    array-length v10, p3

    if-lez v10, :cond_0

    .line 258
    aget-object v7, p3, v8

    .line 259
    .local v7, "opt":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_2

    .line 333
    .end local v7    # "opt":Ljava/lang/String;
    :cond_0
    array-length v10, p3

    if-lez v10, :cond_10

    .line 334
    aget-object v0, p3, v8

    .line 335
    .local v0, "cmd":Ljava/lang/String;
    const/4 v8, 0x1

    .line 336
    const-string/jumbo v10, "log"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string/jumbo v10, "l"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 337
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/secrecy/SecrecyService;->dynamicallyConfigLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 338
    return-void

    .line 259
    .end local v0    # "cmd":Ljava/lang/String;
    .restart local v7    # "opt":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_0

    .line 262
    const/4 v8, 0x1

    .line 264
    const-string/jumbo v10, "-h"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 265
    const-string/jumbo v10, "secrecy service dump options:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    const-string/jumbo v10, "  [-h] [cmd] ..."

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    const-string/jumbo v10, "  cmd may be one of:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v10, "    l[log]: dynamically adjust secrecy log "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    return-void

    .line 270
    :cond_3
    const-string/jumbo v10, "-import_key"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 271
    invoke-virtual {p0}, Lcom/android/server/secrecy/SecrecyService;->isSecrecySupportLocal()Z

    move-result v10

    if-nez v10, :cond_4

    .line 272
    const-string/jumbo v10, "This device do not support secrecy dump"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    return-void

    .line 275
    :cond_4
    const/4 v6, 0x0

    .line 276
    .local v6, "key_arg":Ljava/lang/String;
    array-length v10, p3

    if-ge v8, v10, :cond_6

    .line 277
    aget-object v6, p3, v8

    .line 278
    .local v6, "key_arg":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 284
    iget-object v10, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v10}, Lcom/android/server/secrecy/policy/PolicyManager;->getDecryptTool()Lcom/android/server/secrecy/policy/DecryptTool;

    move-result-object v2

    .line 285
    .local v2, "decryptTool":Lcom/android/server/secrecy/policy/DecryptTool;
    invoke-virtual {v2, p2, v6}, Lcom/android/server/secrecy/policy/DecryptTool;->verifyKey(Ljava/io/PrintWriter;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 287
    :try_start_0
    iget-object v10, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v10, v6}, Lcom/android/server/secrecy/policy/PolicyManager;->importRC4Key(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_5
    :goto_0
    return-void

    .line 280
    .end local v2    # "decryptTool":Lcom/android/server/secrecy/policy/DecryptTool;
    .local v6, "key_arg":Ljava/lang/String;
    :cond_6
    const-string/jumbo v10, "ERROR: Key argument is missing."

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    return-void

    .line 288
    .restart local v2    # "decryptTool":Lcom/android/server/secrecy/policy/DecryptTool;
    .local v6, "key_arg":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 289
    .local v4, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v10, "ERROR: The key contains NOT hex."

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    .end local v2    # "decryptTool":Lcom/android/server/secrecy/policy/DecryptTool;
    .end local v4    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v6    # "key_arg":Ljava/lang/String;
    :cond_7
    const-string/jumbo v10, "-config"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 294
    invoke-virtual {p0}, Lcom/android/server/secrecy/SecrecyService;->isSecrecySupportLocal()Z

    move-result v10

    if-nez v10, :cond_8

    .line 295
    const-string/jumbo v10, "This device do not support secrecy dump"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    return-void

    .line 300
    :cond_8
    const/4 v10, 0x2

    array-length v11, p3

    if-ge v10, v11, :cond_9

    .line 301
    aget-object v1, p3, v8

    .line 302
    .local v1, "config_arg":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 303
    aget-object v9, p3, v8

    .line 304
    .local v9, "signature_arg":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 305
    iget-object v10, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v10}, Lcom/android/server/secrecy/policy/PolicyManager;->getDecryptTool()Lcom/android/server/secrecy/policy/DecryptTool;

    move-result-object v2

    .line 306
    .restart local v2    # "decryptTool":Lcom/android/server/secrecy/policy/DecryptTool;
    invoke-virtual {v2, p2, v1, v9}, Lcom/android/server/secrecy/policy/DecryptTool;->config(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v1    # "config_arg":Ljava/lang/String;
    .end local v2    # "decryptTool":Lcom/android/server/secrecy/policy/DecryptTool;
    .end local v9    # "signature_arg":Ljava/lang/String;
    :goto_1
    return-void

    .line 307
    :cond_9
    array-length v10, p3

    if-ge v8, v10, :cond_a

    .line 308
    aget-object v1, p3, v8

    .line 309
    .restart local v1    # "config_arg":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v10}, Lcom/android/server/secrecy/policy/PolicyManager;->getDecryptTool()Lcom/android/server/secrecy/policy/DecryptTool;

    move-result-object v2

    .line 310
    .restart local v2    # "decryptTool":Lcom/android/server/secrecy/policy/DecryptTool;
    invoke-virtual {v2, p2, v1}, Lcom/android/server/secrecy/policy/DecryptTool;->config(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    .line 312
    .end local v1    # "config_arg":Ljava/lang/String;
    .end local v2    # "decryptTool":Lcom/android/server/secrecy/policy/DecryptTool;
    :cond_a
    const-string/jumbo v10, "ERROR: Config or Signature argument is missing."

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 315
    :cond_b
    const-string/jumbo v10, "-imei"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 316
    invoke-virtual {p0}, Lcom/android/server/secrecy/SecrecyService;->isSecrecySupportLocal()Z

    move-result v10

    if-nez v10, :cond_c

    .line 317
    const-string/jumbo v10, "This device do not support secrecy dump"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    return-void

    .line 321
    :cond_c
    iget-object v10, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v10}, Lcom/android/server/secrecy/policy/PolicyManager;->getImei()Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, "imei":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "IMEI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    return-void

    .line 324
    .end local v5    # "imei":Ljava/lang/String;
    :cond_d
    const-string/jumbo v10, "-status"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 325
    iget-object v10, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v10, p1, p2}, Lcom/android/server/secrecy/policy/PolicyManager;->status(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 326
    return-void

    .line 328
    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown argument: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; use -h for help"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    return-void

    .line 339
    .end local v7    # "opt":Ljava/lang/String;
    .restart local v0    # "cmd":Ljava/lang/String;
    :cond_f
    const-string/jumbo v10, "debug_switch"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 340
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "  all="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/server/secrecy/SecrecyService;->DEBUG:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    return-void

    .line 344
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/secrecy/SecrecyService;->isSecrecySupportLocal()Z

    move-result v10

    if-nez v10, :cond_11

    .line 345
    const-string/jumbo v10, "This device do not support secrecy dump"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    return-void

    .line 348
    :cond_11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mSystemReady       = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/secrecy/SecrecyService;->mSystemReady:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mSecrecySupport       = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/secrecy/SecrecyService;->mSecrecySupport:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "DEBUG    = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/server/secrecy/SecrecyService;->DEBUG:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "LogLevel = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/server/secrecy/policy/util/LogUtil;->getLevelString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    iget-object v10, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const-string/jumbo v11, ""

    invoke-virtual {v10, p1, p2, v11}, Lcom/android/server/secrecy/policy/PolicyManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 353
    iget-object v10, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/server/secrecy/policy/PolicyManager;->getPolicyState(I)Z

    move-result v10

    if-nez v10, :cond_12

    .line 354
    iget-object v10, p0, Lcom/android/server/secrecy/SecrecyService;->mActivityEncryptWork:Lcom/android/server/secrecy/work/ActivityEncryptWork;

    const-string/jumbo v11, ""

    invoke-virtual {v10, p1, p2, v11}, Lcom/android/server/secrecy/work/ActivityEncryptWork;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 356
    :cond_12
    iget-object v10, p0, Lcom/android/server/secrecy/SecrecyService;->mLogEncryptWork:Lcom/android/server/secrecy/work/LogEncryptWork;

    const-string/jumbo v11, ""

    invoke-virtual {v10, p1, p2, v11}, Lcom/android/server/secrecy/work/LogEncryptWork;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method private initPolicy()V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lcom/android/server/secrecy/policy/PolicyManager;->getInstance()Lcom/android/server/secrecy/policy/PolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    .line 114
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/secrecy/SecrecyService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/secrecy/policy/PolicyManager;->setSecrecyService(Landroid/content/Context;Lcom/android/server/secrecy/SecrecyService;Landroid/os/Looper;)V

    .line 115
    return-void
.end method

.method private initWorks()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/android/server/secrecy/work/ActivityEncryptWork;

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/secrecy/work/ActivityEncryptWork;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mActivityEncryptWork:Lcom/android/server/secrecy/work/ActivityEncryptWork;

    .line 109
    new-instance v0, Lcom/android/server/secrecy/work/LogEncryptWork;

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/secrecy/work/LogEncryptWork;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mLogEncryptWork:Lcom/android/server/secrecy/work/LogEncryptWork;

    .line 110
    return-void
.end method

.method private isInActivityConfig(Landroid/content/pm/ActivityInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/android/server/secrecy/SecrecyService;->isSecrecySupportLocal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    return v2

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/secrecy/policy/PolicyManager;->getPolicyState(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    return v2

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mActivityEncryptWork:Lcom/android/server/secrecy/work/ActivityEncryptWork;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/work/ActivityEncryptWork;->preWork(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    return v2

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mActivityEncryptWork:Lcom/android/server/secrecy/work/ActivityEncryptWork;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/work/ActivityEncryptWork;->doWork(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected dynamicallyConfigLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 361
    const/4 v2, 0x0

    .line 362
    .local v2, "tag":Ljava/lang/String;
    const/4 v1, 0x0

    .line 363
    .local v1, "on":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dynamicallyConfigLogTag, args.length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dynamicallyConfigLogTag, args["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_0
    array-length v3, p2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 368
    const-string/jumbo v3, "********** Invalid argument! Get detail help as bellow: **********"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0, p1}, Lcom/android/server/secrecy/SecrecyService;->logoutTagConfigHelp(Ljava/io/PrintWriter;)V

    .line 370
    return-void

    .line 372
    :cond_1
    const/4 v3, 0x1

    aget-object v2, p2, v3

    .line 373
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v3, "1"

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 374
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dynamicallyConfigLogTag, tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    const-string/jumbo v3, "all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 376
    sput-boolean v1, Lcom/android/server/secrecy/SecrecyService;->DEBUG:Z

    .line 377
    invoke-static {v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->dynamicallyConfigLog(Z)V

    .line 379
    :cond_2
    return-void

    .line 373
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isSecrecySupportLocal()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/secrecy/SecrecyService;->mSecrecySupport:Z

    return v0
.end method

.method protected logoutTagConfigHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 382
    const-string/jumbo v0, "********************** Help begin:**********************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    const-string/jumbo v0, "1. open all log in SecrecyService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    const-string/jumbo v0, "cmd: dumpsys secrecy log all 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    const-string/jumbo v0, "----------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    const-string/jumbo v0, "********************** Help end.  **********************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public notifySecrecyState(Ljava/util/Map;)V
    .locals 4
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 147
    iget-object v3, p0, Lcom/android/server/secrecy/SecrecyService;->mClientRecordMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 149
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/secrecy/SecrecyService$ClientRecord;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/secrecy/SecrecyService$ClientRecord;

    .line 153
    .local v0, "client":Lcom/android/server/secrecy/SecrecyService$ClientRecord;
    :try_start_0
    iget-object v3, v0, Lcom/android/server/secrecy/SecrecyService$ClientRecord;->mReceiver:Landroid/secrecy/ISecrecyServiceReceiver;

    invoke-interface {v3, p1}, Landroid/secrecy/ISecrecyServiceReceiver;->onSecrecyStateChanged(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Lcom/android/server/secrecy/SecrecyService$ClientRecord;->binderDied()V

    goto :goto_0

    .line 162
    .end local v0    # "client":Lcom/android/server/secrecy/SecrecyService$ClientRecord;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    const-string/jumbo v0, "SecrecyService"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v0, "secrecy"

    new-instance v1, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;-><init>(Lcom/android/server/secrecy/SecrecyService;Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/secrecy/SecrecyService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 250
    const-class v0, Landroid/secrecy/SecrecyManagerInternal;

    new-instance v1, Lcom/android/server/secrecy/SecrecyService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/secrecy/SecrecyService$LocalService;-><init>(Lcom/android/server/secrecy/SecrecyService;Lcom/android/server/secrecy/SecrecyService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/secrecy/SecrecyService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method public setSecrecySupport(Z)V
    .locals 3
    .param p1, "support"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/secrecy/SecrecyService;->mSecrecySupport:Z

    .line 129
    const-string/jumbo v0, "SecrecyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecrecySupport mSecrecySupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/secrecy/SecrecyService;->mSecrecySupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 118
    const-string/jumbo v0, "SecrecyService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/secrecy/SecrecyService;->mSystemReady:Z

    .line 120
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    iget-boolean v1, p0, Lcom/android/server/secrecy/SecrecyService;->mSecrecySupport:Z

    invoke-virtual {v0, v1}, Lcom/android/server/secrecy/policy/PolicyManager;->systemReady(Z)V

    .line 121
    return-void
.end method
