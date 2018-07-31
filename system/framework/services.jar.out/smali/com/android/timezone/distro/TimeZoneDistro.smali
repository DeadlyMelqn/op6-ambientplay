.class public final Lcom/android/timezone/distro/TimeZoneDistro;
.super Ljava/lang/Object;
.source "TimeZoneDistro.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final DISTRO_VERSION_FILE_NAME:Ljava/lang/String; = "distro_version"

.field public static final FILE_NAME:Ljava/lang/String; = "distro.zip"

.field public static final ICU_DATA_FILE_NAME:Ljava/lang/String; = "icu/icu_tzdata.dat"

.field private static final MAX_GET_ENTRY_CONTENTS_SIZE:J = 0x20000L

.field public static final TZDATA_FILE_NAME:Ljava/lang/String; = "tzdata"

.field public static final TZLOOKUP_FILE_NAME:Ljava/lang/String; = "tzlookup.xml"


# instance fields
.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    .line 79
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 71
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/TimeZoneDistro;-><init>(Ljava/io/InputStream;)V

    .line 72
    return-void
.end method

.method static extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V
    .locals 15
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "targetDir"    # Ljava/io/File;
    .param p2, "makeWorldReadable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static/range {p1 .. p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 135
    const/4 v12, 0x0

    const/4 v8, 0x0

    .local v8, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipInputStream;

    invoke-direct {v9, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 136
    .end local v8    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v9, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/16 v10, 0x2000

    :try_start_1
    new-array v1, v10, [B

    .line 138
    .local v1, "buffer":[B
    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_a

    .line 141
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/android/timezone/distro/FileUtils;->createSubFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 146
    .local v4, "entryFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 147
    move/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 169
    .end local v1    # "buffer":[B
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "entryFile":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v8, v9

    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_1
    :try_start_2
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_2
    if-eqz v8, :cond_1

    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    :cond_1
    :goto_3
    if-eqz v11, :cond_d

    throw v11

    .line 150
    .restart local v1    # "buffer":[B
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "entryFile":Ljava/io/File;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 152
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    .line 151
    move/from16 v0, p2

    invoke-static {v10, v0}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 155
    :cond_3
    const/4 v11, 0x0

    const/4 v5, 0x0

    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 157
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_6
    invoke-virtual {v9, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_5

    .line 158
    const/4 v10, 0x0

    invoke-virtual {v6, v1, v10, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_4

    .line 162
    .end local v2    # "count":I
    :catch_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_5
    :try_start_7
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_6
    if-eqz v5, :cond_4

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_4
    :goto_7
    if-eqz v11, :cond_8

    :try_start_9
    throw v11
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 169
    .end local v1    # "buffer":[B
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "entryFile":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v10

    move-object v8, v9

    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v8, "zipInputStream":Ljava/util/zip/ZipInputStream;
    move-object v11, v12

    goto :goto_2

    .line 161
    .end local v8    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "entryFile":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_5
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->sync()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 162
    if-eqz v6, :cond_6

    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_6
    :goto_8
    if-eqz v11, :cond_9

    :try_start_c
    throw v11

    :catch_2
    move-exception v11

    goto :goto_8

    .end local v2    # "count":I
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v13

    if-nez v11, :cond_7

    move-object v11, v13

    goto :goto_7

    :cond_7
    if-eq v11, v13, :cond_4

    invoke-virtual {v11, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_8
    throw v10

    .line 164
    .restart local v2    # "count":I
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_9
    if-eqz p2, :cond_0

    .line 165
    invoke-static {v4}, Lcom/android/timezone/distro/FileUtils;->makeWorldReadable(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_0

    .line 169
    .end local v2    # "count":I
    .end local v4    # "entryFile":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "name":Ljava/lang/String;
    :cond_a
    if-eqz v9, :cond_b

    :try_start_d
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    :cond_b
    :goto_9
    if-eqz v12, :cond_e

    throw v12

    :catch_4
    move-exception v12

    goto :goto_9

    .end local v1    # "buffer":[B
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_5
    move-exception v12

    if-nez v11, :cond_c

    move-object v11, v12

    goto :goto_3

    :cond_c
    if-eq v11, v12, :cond_1

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_d
    throw v10

    .line 170
    .restart local v1    # "buffer":[B
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_e
    return-void

    .line 169
    .end local v1    # "buffer":[B
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v8, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_3
    move-exception v10

    move-object v11, v12

    goto :goto_2

    :catch_6
    move-exception v10

    goto/16 :goto_1

    .line 162
    .end local v8    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "entryFile":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_4
    move-exception v10

    goto :goto_6

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v10

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .local v5, "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v10

    goto :goto_5
.end method

.method private static getEntryContents(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 17
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v12, 0x0

    const/4 v8, 0x0

    .local v8, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 96
    .end local v8    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v9, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    .local v6, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v6, :cond_b

    .line 97
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 103
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    const-wide/32 v14, 0x20000

    cmp-long v10, v10, v14

    if-lez v10, :cond_2

    .line 104
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Entry "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " too large: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 117
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "name":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v8, v9

    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_0
    :try_start_2
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v11

    move-object/from16 v16, v11

    move-object v11, v10

    move-object/from16 v10, v16

    :goto_1
    if-eqz v8, :cond_1

    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_2
    if-eqz v11, :cond_f

    throw v11

    .line 106
    .restart local v6    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_2
    const/16 v10, 0x2000

    :try_start_4
    new-array v4, v10, [B
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 107
    .local v4, "buffer":[B
    const/4 v11, 0x0

    const/4 v2, 0x0

    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 109
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_3
    :try_start_6
    invoke-virtual {v9, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    .local v5, "count":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_4

    .line 110
    const/4 v10, 0x0

    invoke-virtual {v3, v4, v10, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_3

    .line 113
    .end local v5    # "count":I
    :catch_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_4
    :try_start_7
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v11

    move-object/from16 v16, v11

    move-object v11, v10

    move-object/from16 v10, v16

    :goto_5
    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_3
    :goto_6
    if-eqz v11, :cond_a

    :try_start_9
    throw v11
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 117
    .end local v4    # "buffer":[B
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v10

    move-object v8, v9

    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v8, "zipInputStream":Ljava/util/zip/ZipInputStream;
    move-object v11, v12

    goto :goto_1

    .line 112
    .end local v8    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "count":I
    .restart local v6    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_4
    :try_start_a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-result-object v10

    .line 113
    if-eqz v3, :cond_5

    :try_start_b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_5
    :goto_7
    if-eqz v11, :cond_6

    :try_start_c
    throw v11
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catch_2
    move-exception v11

    goto :goto_7

    .line 117
    :cond_6
    if-eqz v9, :cond_7

    :try_start_d
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    :cond_7
    :goto_8
    if-eqz v12, :cond_8

    throw v12

    :catch_3
    move-exception v12

    goto :goto_8

    .line 112
    :cond_8
    return-object v10

    .line 113
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "count":I
    :catch_4
    move-exception v13

    if-nez v11, :cond_9

    move-object v11, v13

    goto :goto_6

    :cond_9
    if-eq v11, v13, :cond_3

    :try_start_e
    invoke-virtual {v11, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    throw v10
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 116
    .end local v4    # "buffer":[B
    .end local v7    # "name":Ljava/lang/String;
    :cond_b
    const/4 v10, 0x0

    .line 117
    if-eqz v9, :cond_c

    :try_start_f
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    :cond_c
    :goto_9
    if-eqz v12, :cond_d

    throw v12

    :catch_5
    move-exception v12

    goto :goto_9

    .line 116
    :cond_d
    return-object v10

    .line 117
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_6
    move-exception v12

    if-nez v11, :cond_e

    move-object v11, v12

    goto :goto_2

    :cond_e
    if-eq v11, v12, :cond_1

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_f
    throw v10

    .local v8, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_3
    move-exception v10

    move-object v11, v12

    goto :goto_1

    :catch_7
    move-exception v10

    goto :goto_0

    .line 113
    .end local v8    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_4
    move-exception v10

    goto :goto_5

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_5
    move-exception v10

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    :catch_8
    move-exception v10

    goto :goto_4
.end method


# virtual methods
.method public extractTo(Ljava/io/File;)V
    .locals 2
    .param p1, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/timezone/distro/TimeZoneDistro;->extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V

    .line 126
    return-void
.end method

.method public getDistroVersion()Lcom/android/timezone/distro/DistroVersion;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    const-string/jumbo v2, "distro_version"

    invoke-static {v1, v2}, Lcom/android/timezone/distro/TimeZoneDistro;->getEntryContents(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    .line 87
    .local v0, "contents":[B
    if-nez v0, :cond_0

    .line 88
    new-instance v1, Lcom/android/timezone/distro/DistroException;

    const-string/jumbo v2, "Distro version file entry not found"

    invoke-direct {v1, v2}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    invoke-static {v0}, Lcom/android/timezone/distro/DistroVersion;->fromBytes([B)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v1

    return-object v1
.end method
