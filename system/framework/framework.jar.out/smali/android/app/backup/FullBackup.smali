.class public Landroid/app/backup/FullBackup;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/FullBackup$BackupScheme;
    }
.end annotation


# static fields
.field public static final APK_TREE_TOKEN:Ljava/lang/String; = "a"

.field public static final APPS_PREFIX:Ljava/lang/String; = "apps/"

.field public static final CACHE_TREE_TOKEN:Ljava/lang/String; = "c"

.field public static final CONF_TOKEN_INTENT_EXTRA:Ljava/lang/String; = "conftoken"

.field public static final DATABASE_TREE_TOKEN:Ljava/lang/String; = "db"

.field public static final DEVICE_CACHE_TREE_TOKEN:Ljava/lang/String; = "d_c"

.field public static final DEVICE_DATABASE_TREE_TOKEN:Ljava/lang/String; = "d_db"

.field public static final DEVICE_FILES_TREE_TOKEN:Ljava/lang/String; = "d_f"

.field public static final DEVICE_NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "d_nb"

.field public static final DEVICE_ROOT_TREE_TOKEN:Ljava/lang/String; = "d_r"

.field public static final DEVICE_SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "d_sp"

.field public static final FILES_TREE_TOKEN:Ljava/lang/String; = "f"

.field public static final FULL_BACKUP_INTENT_ACTION:Ljava/lang/String; = "fullback"

.field public static final FULL_RESTORE_INTENT_ACTION:Ljava/lang/String; = "fullrest"

.field public static final KEY_VALUE_DATA_TOKEN:Ljava/lang/String; = "k"

.field public static final MANAGED_EXTERNAL_TREE_TOKEN:Ljava/lang/String; = "ef"

.field public static final NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "nb"

.field public static final OBB_TREE_TOKEN:Ljava/lang/String; = "obb"

.field public static final ROOT_TREE_TOKEN:Ljava/lang/String; = "r"

.field public static final SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "sp"

.field public static final SHARED_PREFIX:Ljava/lang/String; = "shared/"

.field public static final SHARED_STORAGE_TOKEN:Ljava/lang/String; = "shared"

.field static final TAG:Ljava/lang/String; = "FullBackup"

.field static final TAG_XML_PARSER:Ljava/lang/String; = "BackupXmlParserLogging"

.field private static final kPackageBackupSchemeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/backup/FullBackup$BackupScheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 91
    sput-object v0, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
.end method

.method static declared-synchronized getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v2, Landroid/app/backup/FullBackup;

    monitor-enter v2

    .line 96
    :try_start_0
    sget-object v1, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/backup/FullBackup$BackupScheme;

    .line 97
    .local v0, "backupSchemeForPackage":Landroid/app/backup/FullBackup$BackupScheme;
    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/app/backup/FullBackup$BackupScheme;

    .end local v0    # "backupSchemeForPackage":Landroid/app/backup/FullBackup$BackupScheme;
    invoke-direct {v0, p0}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;)V

    .line 99
    .restart local v0    # "backupSchemeForPackage":Landroid/app/backup/FullBackup$BackupScheme;
    sget-object v1, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 101
    return-object v0

    .end local v0    # "backupSchemeForPackage":Landroid/app/backup/FullBackup$BackupScheme;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getBackupSchemeForTest(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    new-instance v0, Landroid/app/backup/FullBackup$BackupScheme;

    invoke-direct {v0, p0}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "testing":Landroid/app/backup/FullBackup$BackupScheme;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    .line 107
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    .line 108
    return-object v0
.end method

.method public static restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V
    .locals 21
    .param p0, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "size"    # J
    .param p3, "type"    # I
    .param p4, "mode"    # J
    .param p6, "mtime"    # J
    .param p8, "outFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v15, 0x2

    move/from16 v0, p3

    if-ne v0, v15, :cond_2

    .line 147
    if-eqz p8, :cond_0

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->mkdirs()Z

    .line 197
    :cond_0
    :goto_0
    const-wide/16 v16, 0x0

    cmp-long v15, p4, v16

    if-ltz v15, :cond_1

    if-eqz p8, :cond_1

    .line 200
    const-wide/16 v16, 0x1c0

    and-long p4, p4, v16

    .line 201
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v0, p4

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    .line 205
    :goto_1
    move-object/from16 v0, p8

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 207
    :cond_1
    return-void

    .line 149
    :cond_2
    const/4 v9, 0x0

    .line 153
    .local v9, "out":Ljava/io/FileOutputStream;
    if-eqz p8, :cond_4

    .line 154
    :try_start_1
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    .line 155
    .local v13, "parent":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_3

    .line 160
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 162
    :cond_3
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p8

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .local v12, "out":Ljava/io/FileOutputStream;
    move-object v9, v12

    .line 168
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .end local v13    # "parent":Ljava/io/File;
    :cond_4
    :goto_2
    const v15, 0x8000

    new-array v4, v15, [B

    .line 169
    .local v4, "buffer":[B
    move-wide/from16 v10, p1

    .line 170
    .local v10, "origSize":J
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-direct {v8, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 171
    .local v8, "in":Ljava/io/FileInputStream;
    :goto_3
    const-wide/16 v16, 0x0

    cmp-long v15, p1, v16

    if-lez v15, :cond_5

    .line 172
    array-length v15, v4

    int-to-long v0, v15

    move-wide/from16 v16, v0

    cmp-long v15, p1, v16

    if-lez v15, :cond_6

    array-length v14, v4

    .line 173
    .local v14, "toRead":I
    :goto_4
    const/4 v15, 0x0

    invoke-virtual {v8, v4, v15, v14}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    .line 174
    .local v7, "got":I
    if-gtz v7, :cond_7

    .line 175
    const-string/jumbo v15, "FullBackup"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Incomplete read: expected "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " but got "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 176
    sub-long v18, v10, p1

    .line 175
    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v7    # "got":I
    .end local v14    # "toRead":I
    :cond_5
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    .line 164
    .end local v4    # "buffer":[B
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v10    # "origSize":J
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 165
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v15, "FullBackup"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unable to create/open file "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 172
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v8    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "origSize":J
    :cond_6
    move-wide/from16 v0, p1

    long-to-int v14, v0

    .restart local v14    # "toRead":I
    goto :goto_4

    .line 179
    .restart local v7    # "got":I
    :cond_7
    if-eqz v9, :cond_8

    .line 181
    const/4 v15, 0x0

    :try_start_2
    invoke-virtual {v9, v4, v15, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 191
    :cond_8
    :goto_5
    int-to-long v0, v7

    move-wide/from16 v16, v0

    sub-long p1, p1, v16

    goto :goto_3

    .line 182
    :catch_1
    move-exception v6

    .line 185
    .restart local v6    # "e":Ljava/io/IOException;
    const-string/jumbo v15, "FullBackup"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unable to write to file "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 187
    const/4 v9, 0x0

    .line 188
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->delete()Z

    goto :goto_5

    .line 202
    .end local v4    # "buffer":[B
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "got":I
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .end local v10    # "origSize":J
    .end local v14    # "toRead":I
    :catch_2
    move-exception v5

    .line 203
    .local v5, "e":Landroid/system/ErrnoException;
    invoke-virtual {v5}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    goto/16 :goto_1
.end method
