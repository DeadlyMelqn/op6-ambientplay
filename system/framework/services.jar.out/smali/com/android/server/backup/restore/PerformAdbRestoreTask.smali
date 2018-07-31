.class public Lcom/android/server/backup/restore/PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-backup-restore-RestorePolicySwitchesValues:[I


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field private final mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

.field private mBytes:J

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentPassword:Ljava/lang/String;

.field private final mDecryptPassword:Ljava/lang/String;

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field private final mInputFile:Landroid/os/ParcelFileDescriptor;

.field private final mInstallObserver:Lcom/android/server/backup/restore/RestoreInstallObserver;

.field private final mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerBackupAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field private mWidgetData:[B


# direct methods
.method static synthetic -get0(Lcom/android/server/backup/restore/PerformAdbRestoreTask;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    .prologue
    iget-wide v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    return-wide v0
.end method

.method private static synthetic -getcom-android-server-backup-restore-RestorePolicySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->-com-android-server-backup-restore-RestorePolicySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->-com-android-server-backup-restore-RestorePolicySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/backup/restore/RestorePolicy;->values()[Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->-com-android-server-backup-restore-RestorePolicySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/server/backup/restore/PerformAdbRestoreTask;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/restore/PerformAdbRestoreTask;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    return-wide p1
.end method

.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3
    .param p1, "backupManagerService"    # Lcom/android/server/backup/RefactoredBackupManagerService;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "decryptPassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p6, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/android/server/backup/restore/RestoreInstallObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreInstallObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/restore/RestoreInstallObserver;

    .line 92
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 98
    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 99
    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 100
    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mWidgetData:[B

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    .line 146
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 147
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 148
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 149
    iput-object p4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 150
    iput-object p5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 151
    iput-object p6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 152
    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 153
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 154
    invoke-virtual {p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 153
    invoke-direct {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageManagerBackupAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 155
    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 156
    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 157
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-direct {v0, p1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 161
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.providers.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method private static attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .locals 27
    .param p0, "decryptPassword"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "userSalt"    # [B
    .param p3, "ckSalt"    # [B
    .param p4, "rounds"    # I
    .param p5, "userIvHex"    # Ljava/lang/String;
    .param p6, "masterKeyBlobHex"    # Ljava/lang/String;
    .param p7, "rawInStream"    # Ljava/io/InputStream;
    .param p8, "doLog"    # Z

    .prologue
    .line 317
    const/16 v21, 0x0

    .line 320
    .local v21, "result":Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v24, "AES/CBC/PKCS5Padding"

    invoke-static/range {v24 .. v24}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 321
    .local v5, "c":Ljavax/crypto/Cipher;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v23

    .line 324
    .local v23, "userKey":Ljavax/crypto/SecretKey;
    invoke-static/range {p5 .. p5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 325
    .local v4, "IV":[B
    new-instance v13, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v13, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 327
    .local v13, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v24, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface/range {v23 .. v23}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v25

    const-string/jumbo v26, "AES"

    invoke-direct/range {v24 .. v26}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 326
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 329
    invoke-static/range {p6 .. p6}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v18

    .line 330
    .local v18, "mkCipher":[B
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v16

    .line 333
    .local v16, "mkBlob":[B
    const/16 v19, 0x0

    .local v19, "offset":I
    const/16 v24, 0x0

    .line 334
    const/16 v19, 0x1

    aget-byte v14, v16, v24

    .line 335
    .local v14, "len":I
    add-int/lit8 v24, v14, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 336
    add-int/lit8 v19, v14, 0x1

    .line 338
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "offset":I
    .local v20, "offset":I
    aget-byte v14, v16, v19

    .line 340
    add-int v24, v20, v14

    .line 339
    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    .line 341
    .local v15, "mk":[B
    add-int v19, v20, v14

    .line 343
    .end local v20    # "offset":I
    .restart local v19    # "offset":I
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "offset":I
    .restart local v20    # "offset":I
    aget-byte v14, v16, v19

    .line 345
    add-int v24, v20, v14

    .line 344
    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v17

    .line 348
    .local v17, "mkChecksum":[B
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v15, v1, v2}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v6

    .line 350
    .local v6, "calculatedCk":[B
    move-object/from16 v0, v17

    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 351
    new-instance v13, Ljavax/crypto/spec/IvParameterSpec;

    .end local v13    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    invoke-direct {v13, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 353
    .restart local v13    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v24, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v25, "AES"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v15, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 352
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 356
    new-instance v22, Ljavax/crypto/CipherInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, p7

    invoke-direct {v0, v1, v5}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .local v22, "result":Ljava/io/InputStream;
    move-object/from16 v21, v22

    .line 390
    .end local v4    # "IV":[B
    .end local v5    # "c":Ljavax/crypto/Cipher;
    .end local v6    # "calculatedCk":[B
    .end local v13    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v14    # "len":I
    .end local v15    # "mk":[B
    .end local v16    # "mkBlob":[B
    .end local v17    # "mkChecksum":[B
    .end local v18    # "mkCipher":[B
    .end local v20    # "offset":I
    .end local v21    # "result":Ljava/io/InputStream;
    .end local v22    # "result":Ljava/io/InputStream;
    .end local v23    # "userKey":Ljavax/crypto/SecretKey;
    :cond_0
    :goto_0
    return-object v21

    .line 357
    .restart local v4    # "IV":[B
    .restart local v5    # "c":Ljavax/crypto/Cipher;
    .restart local v6    # "calculatedCk":[B
    .restart local v13    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v14    # "len":I
    .restart local v15    # "mk":[B
    .restart local v16    # "mkBlob":[B
    .restart local v17    # "mkChecksum":[B
    .restart local v18    # "mkCipher":[B
    .restart local v20    # "offset":I
    .restart local v21    # "result":Ljava/io/InputStream;
    .restart local v23    # "userKey":Ljavax/crypto/SecretKey;
    :cond_1
    if-eqz p8, :cond_0

    .line 358
    const-string/jumbo v24, "BackupManagerService"

    const-string/jumbo v25, "Incorrect password"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 360
    .end local v4    # "IV":[B
    .end local v5    # "c":Ljavax/crypto/Cipher;
    .end local v6    # "calculatedCk":[B
    .end local v13    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v14    # "len":I
    .end local v15    # "mk":[B
    .end local v16    # "mkBlob":[B
    .end local v17    # "mkChecksum":[B
    .end local v18    # "mkCipher":[B
    .end local v20    # "offset":I
    .end local v23    # "userKey":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v7

    .line 361
    .local v7, "e":Ljava/security/InvalidAlgorithmParameterException;
    if-eqz p8, :cond_0

    .line 362
    const-string/jumbo v24, "BackupManagerService"

    const-string/jumbo v25, "Needed parameter spec unavailable!"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 384
    .end local v7    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_1
    move-exception v8

    .line 385
    .local v8, "e":Ljava/security/InvalidKeyException;
    if-eqz p8, :cond_0

    .line 386
    const-string/jumbo v24, "BackupManagerService"

    const-string/jumbo v25, "Illegal password; aborting"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    .end local v8    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v12

    .line 381
    .local v12, "e":Ljavax/crypto/NoSuchPaddingException;
    if-eqz p8, :cond_0

    .line 382
    const-string/jumbo v24, "BackupManagerService"

    const-string/jumbo v25, "Needed padding mechanism unavailable!"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    .end local v12    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_3
    move-exception v9

    .line 377
    .local v9, "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz p8, :cond_0

    .line 378
    const-string/jumbo v24, "BackupManagerService"

    const-string/jumbo v25, "Needed decryption algorithm unavailable!"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    .end local v9    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v11

    .line 373
    .local v11, "e":Ljavax/crypto/IllegalBlockSizeException;
    if-eqz p8, :cond_0

    .line 374
    const-string/jumbo v24, "BackupManagerService"

    const-string/jumbo v25, "Invalid block size in master key"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    .end local v11    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v10

    .line 369
    .local v10, "e":Ljavax/crypto/BadPaddingException;
    if-eqz p8, :cond_0

    .line 370
    const-string/jumbo v24, "BackupManagerService"

    const-string/jumbo v25, "Incorrect password"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .locals 14
    .param p0, "decryptPassword"    # Ljava/lang/String;
    .param p1, "encryptionName"    # Ljava/lang/String;
    .param p2, "pbkdf2Fallback"    # Z
    .param p3, "rawInStream"    # Ljava/io/InputStream;

    .prologue
    .line 397
    const/4 v12, 0x0

    .line 399
    .local v12, "result":Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v0, "AES-256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    .line 402
    .local v13, "userSaltHex":Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 404
    .local v2, "userSalt":[B
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    .line 405
    .local v9, "ckSaltHex":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 407
    .local v3, "ckSalt":[B
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 408
    .local v4, "rounds":I
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, "userIvHex":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 413
    .local v6, "masterKeyBlobHex":Ljava/lang/String;
    const-string/jumbo v1, "PBKDF2WithHmacSHA1"

    .line 414
    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v7, p3

    .line 413
    invoke-static/range {v0 .. v8}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v12

    .line 415
    .local v12, "result":Ljava/io/InputStream;
    if-nez v12, :cond_0

    if-eqz p2, :cond_0

    .line 417
    const-string/jumbo v1, "PBKDF2WithHmacSHA1And8bit"

    .line 418
    const/4 v8, 0x1

    move-object v0, p0

    move-object/from16 v7, p3

    .line 416
    invoke-static/range {v0 .. v8}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v12

    .line 429
    .end local v2    # "userSalt":[B
    .end local v3    # "ckSalt":[B
    .end local v4    # "rounds":I
    .end local v5    # "userIvHex":Ljava/lang/String;
    .end local v6    # "masterKeyBlobHex":Ljava/lang/String;
    .end local v9    # "ckSaltHex":Ljava/lang/String;
    .end local v12    # "result":Ljava/io/InputStream;
    .end local v13    # "userSaltHex":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v12

    .line 421
    .local v12, "result":Ljava/io/InputStream;
    :cond_1
    const-string/jumbo v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unsupported encryption method: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 423
    .end local v12    # "result":Ljava/io/InputStream;
    :catch_0
    move-exception v11

    .line 424
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "Can\'t parse restore data header"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v10

    .line 426
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "Can\'t read input header"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 789
    const-string/jumbo v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 796
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 13
    .param p0, "rawInputStream"    # Ljava/io/InputStream;
    .param p1, "decryptPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 251
    const/4 v1, 0x0

    .line 252
    .local v1, "compressed":Z
    move-object v6, p0

    .line 254
    .local v6, "preCompressStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 255
    .local v4, "okay":Z
    const-string/jumbo v9, "ANDROID BACKUP\n"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    .line 256
    .local v2, "headerLen":I
    new-array v8, v2, [B

    .line 257
    .local v8, "streamHeader":[B
    invoke-static {p0, v8}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readFullyOrThrow(Ljava/io/InputStream;[B)V

    .line 258
    const-string/jumbo v9, "ANDROID BACKUP\n"

    .line 259
    const-string/jumbo v10, "UTF-8"

    .line 258
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 260
    .local v3, "magicBytes":[B
    invoke-static {v3, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 262
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 263
    .local v7, "s":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 264
    .local v0, "archiveVersion":I
    const/4 v9, 0x5

    if-gt v0, v9, :cond_5

    .line 267
    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    const/4 v5, 0x1

    .line 269
    .local v5, "pbkdf2Fallback":Z
    :goto_0
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 270
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_2

    const/4 v1, 0x1

    .line 271
    :goto_1
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 272
    const-string/jumbo v9, "none"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 274
    const/4 v4, 0x1

    .line 292
    .end local v0    # "archiveVersion":I
    .end local v5    # "pbkdf2Fallback":Z
    .end local v7    # "s":Ljava/lang/String;
    :cond_0
    :goto_2
    if-nez v4, :cond_7

    .line 293
    const-string/jumbo v9, "BackupManagerService"

    const-string/jumbo v10, "Invalid restore data; aborting."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-object v12

    .line 267
    .restart local v0    # "archiveVersion":I
    .restart local v7    # "s":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "pbkdf2Fallback":Z
    goto :goto_0

    .line 270
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 275
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 276
    invoke-static {p1, v7, v5, p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v6

    .line 279
    if-eqz v6, :cond_0

    .line 280
    const/4 v4, 0x1

    goto :goto_2

    .line 283
    :cond_4
    const-string/jumbo v9, "BackupManagerService"

    const-string/jumbo v10, "Archive is encrypted but no password given"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 286
    .end local v5    # "pbkdf2Fallback":Z
    :cond_5
    const-string/jumbo v9, "BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Wrong header version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 289
    .end local v0    # "archiveVersion":I
    .end local v7    # "s":Ljava/lang/String;
    :cond_6
    const-string/jumbo v9, "BackupManagerService"

    const-string/jumbo v10, "Didn\'t read the right header magic"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 298
    :cond_7
    if-eqz v1, :cond_8

    new-instance v9, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v9, v6}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v9

    .end local v6    # "preCompressStream":Ljava/io/InputStream;
    :cond_8
    return-object v6
.end method

.method private static readFullyOrThrow(Ljava/io/InputStream;[B)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, "offset":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 237
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 238
    .local v0, "bytesRead":I
    if-gtz v0, :cond_0

    .line 239
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Couldn\'t fully read data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    .line 243
    .end local v0    # "bytesRead":I
    :cond_1
    return-void
.end method

.method private static readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 304
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "c":I
    if-ltz v1, :cond_0

    .line 305
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 310
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 308
    :cond_1
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setUpPipes()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 800
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 801
    return-void
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 9
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "doRestoreFinished"    # Z

    .prologue
    const/4 v8, 0x0

    .line 818
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_1

    .line 821
    if-eqz p2, :cond_0

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->generateRandomIntegerToken()I

    move-result v1

    .line 823
    .local v1, "token":I
    new-instance v4, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    .line 824
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 823
    invoke-direct {v4, v0, v1}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;I)V

    .line 825
    .local v4, "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 826
    const-wide/32 v2, 0x493e0

    const/4 v5, 0x1

    .line 825
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 827
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 831
    new-instance v7, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 832
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 831
    invoke-direct {v7, v0, v1, v2}, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/RefactoredBackupManagerService;)V

    .line 833
    .local v7, "runner":Ljava/lang/Runnable;
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v2, "restore-sys-finished-runner"

    invoke-direct {v0, v7, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 839
    .end local v7    # "runner":Ljava/lang/Runnable;
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->await()V

    .line 842
    .end local v1    # "token":I
    .end local v4    # "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    :goto_1
    iput-object v8, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 848
    :cond_1
    return-void

    .line 835
    .restart local v1    # "token":I
    .restart local v4    # "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 836
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v2

    .line 835
    invoke-interface {v0, v1, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 843
    .end local v1    # "token":I
    .end local v4    # "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    :catch_0
    move-exception v6

    .line 844
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Lost app trying to shut down"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private tearDownPipes()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 804
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 806
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 807
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 808
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 809
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object v2, v1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :goto_0
    iput-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 815
    :cond_0
    return-void

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .locals 50
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "mustKillAgent"    # Z
    .param p3, "buffer"    # [B
    .param p4, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p5, "allowApks"    # Z
    .param p6, "token"    # I
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    .prologue
    .line 434
    new-instance v12, Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;-><init>(Lcom/android/server/backup/restore/PerformAdbRestoreTask;)V

    .line 440
    .local v12, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    new-instance v46, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v12, v2}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    .line 444
    .local v46, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_0
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v10

    .line 445
    .local v10, "info":Lcom/android/server/backup/FileMetadata;
    if-eqz v10, :cond_2

    .line 450
    iget-object v14, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 451
    .local v14, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 454
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 455
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v5, :cond_1

    .line 462
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Saw new package; finalizing old one"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 466
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 467
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 468
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 472
    :cond_1
    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v6, "_manifest"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 473
    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v45

    .line 476
    .local v45, "signatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 475
    move-object/from16 v0, v46

    move/from16 v1, p5

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v10, v2}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v44

    .line 478
    .local v44, "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v6, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, v44

    invoke-virtual {v5, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v6, v10, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-wide v6, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v46

    invoke-virtual {v0, v6, v7}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 485
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v5, v14}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 785
    .end local v10    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v44    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v45    # "signatures":[Landroid/content/pm/Signature;
    :cond_2
    :goto_0
    if-eqz v10, :cond_1b

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 486
    .restart local v10    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "pkg":Ljava/lang/String;
    :cond_3
    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v6, "_meta"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 488
    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 494
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mWidgetData:[B

    .line 496
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p7

    .line 498
    iget-wide v6, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v46

    invoke-virtual {v0, v6, v7}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 777
    .end local v10    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v35

    .line 779
    .local v35, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "io exception on restore socket read"

    move-object/from16 v0, v35

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    const/4 v10, 0x0

    .local v10, "info":Lcom/android/server/backup/FileMetadata;
    goto :goto_0

    .line 502
    .end local v35    # "e":Ljava/io/IOException;
    .local v10, "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "pkg":Ljava/lang/String;
    :cond_4
    const/16 v40, 0x1

    .line 503
    .local v40, "okay":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/backup/restore/RestorePolicy;

    .line 504
    .local v43, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    invoke-static {}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->-getcom-android-server-backup-restore-RestorePolicySwitchesValues()[I

    move-result-object v5

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 558
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Invalid policy from manifest"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/16 v40, 0x0

    .line 560
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :cond_5
    :goto_2
    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 566
    const/16 v40, 0x0

    .line 571
    :cond_6
    if-eqz v40, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v5, :cond_7

    .line 572
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Reusing existing agent instance"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_7
    if-eqz v40, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_8

    .line 576
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Need to launch agent for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 581
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 582
    const/4 v6, 0x0

    .line 581
    invoke-virtual {v5, v14, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 580
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 586
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 590
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v5, :cond_12

    .line 592
    const-string/jumbo v5, "BackupManagerService"

    .line 593
    const-string/jumbo v6, "Clearing app data preparatory to full restore"

    .line 592
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5, v14}, Lcom/android/server/backup/RefactoredBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 602
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 611
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->setUpPipes()V

    .line 612
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 613
    const-string/jumbo v5, "k"

    iget-object v8, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 614
    const/4 v5, 0x0

    .line 612
    :goto_5
    invoke-virtual {v6, v7, v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 616
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 623
    :goto_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_8

    .line 624
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to create agent for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/16 v40, 0x0

    .line 626
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 627
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    :cond_8
    if-eqz v40, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    .line 634
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Restoring data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 635
    const-string/jumbo v7, " but agent is for "

    .line 634
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 635
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 634
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/16 v40, 0x0

    .line 643
    :cond_9
    if-eqz v40, :cond_e

    .line 644
    const/16 v30, 0x1

    .line 645
    .local v30, "agentSuccess":Z
    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v48, v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 647
    .local v48, "toCopy":J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 648
    const-wide/32 v6, 0xea60

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v5, p6

    .line 647
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/backup/RefactoredBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 650
    const-string/jumbo v5, "obb"

    iget-object v6, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 652
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Restoring OBB file for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 653
    const-string/jumbo v7, " : "

    .line 652
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 653
    iget-object v7, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 652
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v15, v5, v6

    .line 656
    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v16, v0

    iget v0, v10, Lcom/android/server/backup/FileMetadata;->type:I

    move/from16 v18, v0

    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->mode:J

    move-wide/from16 v20, v0

    .line 657
    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-wide/from16 v22, v0

    .line 658
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v25

    move/from16 v24, p6

    .line 655
    invoke-virtual/range {v13 .. v25}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 703
    :goto_7
    if-eqz v40, :cond_d

    .line 704
    const/16 v42, 0x1

    .line 705
    .local v42, "pipeOkay":Z
    :try_start_5
    new-instance v41, Ljava/io/FileOutputStream;

    .line 706
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 705
    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 707
    .local v41, "pipe":Ljava/io/FileOutputStream;
    :cond_a
    :goto_8
    const-wide/16 v6, 0x0

    cmp-long v5, v48, v6

    if-lez v5, :cond_c

    .line 708
    move-object/from16 v0, p3

    array-length v5, v0

    int-to-long v6, v5

    cmp-long v5, v48, v6

    if-lez v5, :cond_18

    .line 709
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v47, v0

    .line 710
    .local v47, "toRead":I
    :goto_9
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v47

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v37

    .line 711
    .local v37, "nRead":I
    if-ltz v37, :cond_b

    .line 712
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    move/from16 v0, v37

    int-to-long v8, v0

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    .line 714
    :cond_b
    if-gtz v37, :cond_19

    .line 733
    .end local v37    # "nRead":I
    .end local v47    # "toRead":I
    :cond_c
    iget-wide v6, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v46

    invoke-virtual {v0, v6, v7}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 737
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v30

    .line 742
    .end local v30    # "agentSuccess":Z
    .end local v41    # "pipe":Ljava/io/FileOutputStream;
    .end local v42    # "pipeOkay":Z
    :cond_d
    if-nez v30, :cond_e

    .line 744
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Agent failure restoring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; now ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v5

    .line 747
    const/16 v6, 0x12

    .line 746
    invoke-virtual {v5, v6}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 748
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 749
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 750
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    .end local v48    # "toCopy":J
    :cond_e
    if-nez v40, :cond_2

    .line 759
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "[discarding file content]"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-wide v6, v10, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v8, 0x1ff

    add-long/2addr v6, v8

    const-wide/16 v8, -0x200

    and-long v32, v6, v8

    .line 762
    .local v32, "bytesToConsume":J
    :goto_a
    const-wide/16 v6, 0x0

    cmp-long v5, v32, v6

    if-lez v5, :cond_2

    .line 763
    move-object/from16 v0, p3

    array-length v5, v0

    int-to-long v6, v5

    cmp-long v5, v32, v6

    if-lez v5, :cond_1a

    .line 764
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v47, v0

    .line 765
    .restart local v47    # "toRead":I
    :goto_b
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v47

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v38, v0

    .line 766
    .local v38, "nRead":J
    const-wide/16 v6, 0x0

    cmp-long v5, v38, v6

    if-ltz v5, :cond_f

    .line 767
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    add-long v6, v6, v38

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    .line 769
    :cond_f
    const-wide/16 v6, 0x0

    cmp-long v5, v38, v6

    if-lez v5, :cond_2

    .line 772
    sub-long v32, v32, v38

    goto :goto_a

    .line 506
    .end local v32    # "bytesToConsume":J
    .end local v38    # "nRead":J
    .end local v47    # "toRead":I
    :pswitch_0
    const/16 v40, 0x0

    .line 507
    goto/16 :goto_2

    .line 512
    :pswitch_1
    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 514
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "APK file; installing"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 519
    .local v11, "installerName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 520
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/restore/RestoreInstallObserver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    .line 521
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    .line 522
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v13}, Lcom/android/server/backup/RefactoredBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v13

    move-object/from16 v4, p1

    .line 518
    invoke-static/range {v4 .. v13}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/pm/PackageManager;Lcom/android/server/backup/restore/RestoreInstallObserver;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;Ljava/io/File;)Z

    move-result v36

    .line 525
    .local v36, "isSuccessfullyInstalled":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v36, :cond_10

    .line 526
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    .line 525
    :goto_c
    invoke-virtual {v6, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-wide v6, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v46

    invoke-virtual {v0, v6, v7}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 532
    const/4 v5, 0x1

    return v5

    .line 527
    :cond_10
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_c

    .line 536
    .end local v11    # "installerName":Ljava/lang/String;
    .end local v36    # "isSuccessfullyInstalled":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const/16 v40, 0x0

    goto/16 :goto_2

    .line 542
    :pswitch_2
    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 544
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "apk present but ACCEPT"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 550
    const/16 v40, 0x0

    goto/16 :goto_2

    .line 598
    :cond_12
    :try_start_6
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "backup agent ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 599
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 598
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 599
    const-string/jumbo v7, ") => no clear"

    .line 598
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 617
    :catch_1
    move-exception v35

    .restart local v35    # "e":Ljava/io/IOException;
    goto/16 :goto_6

    .line 605
    .end local v35    # "e":Ljava/io/IOException;
    :cond_13
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "We\'ve initialized this app already; no clear required"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    .line 619
    :catch_2
    move-exception v31

    .local v31, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_6

    .line 615
    .end local v31    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_14
    const/4 v5, 0x3

    goto/16 :goto_5

    .line 659
    .restart local v30    # "agentSuccess":Z
    .restart local v48    # "toCopy":J
    :cond_15
    :try_start_7
    const-string/jumbo v5, "k"

    iget-object v6, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 661
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Restoring key-value file for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 662
    const-string/jumbo v7, " : "

    .line 661
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 662
    iget-object v7, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 661
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v15, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v16, v0

    .line 667
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v19, v5, v6

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v20, v0

    move-object/from16 v18, v10

    move/from16 v21, p6

    .line 665
    invoke-direct/range {v15 .. v21}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerServiceInterface;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    .line 669
    .local v15, "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    new-instance v5, Ljava/lang/Thread;

    const-string/jumbo v6, "restore-key-value-runner"

    invoke-direct {v5, v15, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_7

    .line 689
    .end local v15    # "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    :catch_3
    move-exception v35

    .line 691
    .restart local v35    # "e":Ljava/io/IOException;
    :try_start_8
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Couldn\'t establish restore"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 692
    const/16 v30, 0x0

    .line 693
    const/16 v40, 0x0

    goto/16 :goto_7

    .line 672
    .end local v35    # "e":Ljava/io/IOException;
    :cond_16
    :try_start_9
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invoking agent to restore file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v6, "system"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 679
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "system process agent - spinning a thread"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    new-instance v4, Lcom/android/server/backup/restore/RestoreFileRunnable;

    .line 681
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x0

    aget-object v8, v7, v8

    move-object v7, v10

    move/from16 v9, p6

    .line 680
    invoke-direct/range {v4 .. v9}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 682
    .local v4, "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    new-instance v5, Ljava/lang/Thread;

    const-string/jumbo v6, "restore-sys-runner"

    invoke-direct {v5, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_7

    .line 694
    .end local v4    # "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    :catch_4
    move-exception v34

    .line 697
    .local v34, "e":Landroid/os/RemoteException;
    :try_start_a
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Agent crashed during full restore"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 698
    const/16 v30, 0x0

    .line 699
    const/16 v40, 0x0

    goto/16 :goto_7

    .line 684
    .end local v34    # "e":Landroid/os/RemoteException;
    :cond_17
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v18, v5, v6

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v19, v0

    iget v0, v10, Lcom/android/server/backup/FileMetadata;->type:I

    move/from16 v21, v0

    .line 685
    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->mode:J

    move-wide/from16 v24, v0

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-wide/from16 v26, v0

    .line 686
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v29

    move/from16 v28, p6

    .line 684
    invoke-interface/range {v17 .. v29}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_7

    .line 709
    .restart local v41    # "pipe":Ljava/io/FileOutputStream;
    .restart local v42    # "pipeOkay":Z
    :cond_18
    move-wide/from16 v0, v48

    long-to-int v0, v0

    move/from16 v47, v0

    .restart local v47    # "toRead":I
    goto/16 :goto_9

    .line 717
    .restart local v37    # "nRead":I
    :cond_19
    move/from16 v0, v37

    int-to-long v6, v0

    sub-long v48, v48, v6

    .line 721
    if-eqz v42, :cond_a

    .line 723
    const/4 v5, 0x0

    :try_start_c
    move-object/from16 v0, v41

    move-object/from16 v1, p3

    move/from16 v2, v37

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_8

    .line 724
    :catch_5
    move-exception v35

    .line 725
    .restart local v35    # "e":Ljava/io/IOException;
    :try_start_d
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Failed to write to restore pipe"

    move-object/from16 v0, v35

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 726
    const/16 v42, 0x0

    goto/16 :goto_8

    .line 764
    .end local v30    # "agentSuccess":Z
    .end local v35    # "e":Ljava/io/IOException;
    .end local v37    # "nRead":I
    .end local v41    # "pipe":Ljava/io/FileOutputStream;
    .end local v42    # "pipeOkay":Z
    .end local v47    # "toRead":I
    .end local v48    # "toCopy":J
    .restart local v32    # "bytesToConsume":J
    :cond_1a
    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v47, v0

    .restart local v47    # "toRead":I
    goto/16 :goto_b

    .line 785
    .end local v10    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v32    # "bytesToConsume":J
    .end local v40    # "okay":Z
    .end local v43    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v47    # "toRead":I
    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 167
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "--- Performing full-dataset restore ---"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 169
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendStartRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 172
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    const-string/jumbo v2, "com.android.sharedstoragebackup"

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    const/4 v10, 0x0

    .line 178
    .local v10, "rawInStream":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Backup password mismatch; aborting"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 211
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 212
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0, v12}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 224
    :try_start_2
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 227
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 228
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 229
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Full restore pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 182
    return-void

    .line 219
    :catch_0
    move-exception v9

    .line 220
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Close of restore data pipe threw"

    invoke-static {v0, v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 223
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 185
    :cond_1
    const-wide/16 v4, 0x0

    :try_start_3
    iput-wide v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    .line 187
    new-instance v11, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 190
    .end local v10    # "rawInStream":Ljava/io/FileInputStream;
    .local v11, "rawInStream":Ljava/io/FileInputStream;
    :try_start_4
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 189
    invoke-static {v11, v0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-result-object v1

    .line 191
    .local v1, "tarInputStream":Ljava/io/InputStream;
    if-nez v1, :cond_3

    .line 211
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 212
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0, v12}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 215
    if-eqz v11, :cond_2

    .line 216
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 223
    :goto_1
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 224
    :try_start_6
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v2

    .line 227
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 228
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 229
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Full restore pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 194
    return-void

    .line 219
    :catch_1
    move-exception v9

    .line 220
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Close of restore data pipe threw"

    invoke-static {v0, v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 223
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 197
    :cond_3
    const v0, 0x8000

    :try_start_7
    new-array v3, v0, [B

    .line 202
    .local v3, "buffer":[B
    :cond_4
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->generateRandomIntegerToken()I

    move-result v6

    .line 200
    const/4 v2, 0x0

    .line 201
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 202
    const/4 v7, 0x0

    move-object v0, p0

    .line 200
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-result v8

    .line 203
    .local v8, "didRestore":Z
    if-nez v8, :cond_4

    .line 211
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 212
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0, v12}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 215
    if-eqz v11, :cond_5

    .line 216
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 223
    :goto_2
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 224
    :try_start_9
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit v2

    .line 227
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 228
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 229
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Full restore pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object v10, v11

    .line 232
    .end local v1    # "tarInputStream":Ljava/io/InputStream;
    .end local v3    # "buffer":[B
    .end local v8    # "didRestore":Z
    .end local v11    # "rawInStream":Ljava/io/FileInputStream;
    :goto_3
    return-void

    .line 219
    .restart local v1    # "tarInputStream":Ljava/io/InputStream;
    .restart local v3    # "buffer":[B
    .restart local v8    # "didRestore":Z
    .restart local v11    # "rawInStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v9

    .line 220
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Close of restore data pipe threw"

    invoke-static {v0, v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 223
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    .line 208
    .end local v1    # "tarInputStream":Ljava/io/InputStream;
    .end local v3    # "buffer":[B
    .end local v8    # "didRestore":Z
    .end local v11    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v10    # "rawInStream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v9

    .line 209
    .end local v10    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v9    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_a
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Unable to read restore input"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 211
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 212
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0, v12}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 215
    if-eqz v10, :cond_6

    .line 216
    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 218
    :cond_6
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 223
    :goto_5
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 224
    :try_start_c
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    monitor-exit v2

    .line 227
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 228
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 229
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Full restore pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_3

    .line 219
    :catch_4
    move-exception v9

    .line 220
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Close of restore data pipe threw"

    invoke-static {v0, v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 223
    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0

    .line 210
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v0

    .line 211
    :goto_6
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 212
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2, v12}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 215
    if-eqz v10, :cond_7

    .line 216
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 218
    :cond_7
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 223
    :goto_7
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 224
    :try_start_e
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 225
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    monitor-exit v2

    .line 227
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 228
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v2}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 229
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v4, "Full restore pass complete."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 210
    throw v0

    .line 219
    :catch_5
    move-exception v9

    .line 220
    .restart local v9    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v4, "Close of restore data pipe threw"

    invoke-static {v2, v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 223
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v0

    monitor-exit v2

    throw v0

    .line 210
    .restart local v11    # "rawInStream":Ljava/io/FileInputStream;
    :catchall_6
    move-exception v0

    move-object v10, v11

    .end local v11    # "rawInStream":Ljava/io/FileInputStream;
    .local v10, "rawInStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 208
    .end local v10    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v11    # "rawInStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    move-object v10, v11

    .end local v11    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v10    # "rawInStream":Ljava/io/FileInputStream;
    goto/16 :goto_4
.end method
