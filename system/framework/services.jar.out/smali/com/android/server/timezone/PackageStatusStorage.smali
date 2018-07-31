.class final Lcom/android/server/timezone/PackageStatusStorage;
.super Ljava/lang/Object;
.source "PackageStatusStorage.java"


# static fields
.field private static final ATTRIBUTE_CHECK_STATUS:Ljava/lang/String; = "checkStatus"

.field private static final ATTRIBUTE_DATA_APP_VERSION:Ljava/lang/String; = "dataAppPackageVersion"

.field private static final ATTRIBUTE_OPTIMISTIC_LOCK_ID:Ljava/lang/String; = "optimisticLockId"

.field private static final ATTRIBUTE_UPDATE_APP_VERSION:Ljava/lang/String; = "updateAppPackageVersion"

.field private static final LOG_TAG:Ljava/lang/String; = "timezone.PackageStatusStorage"

.field private static final TAG_PACKAGE_STATUS:Ljava/lang/String; = "PackageStatus"

.field private static final UNKNOWN_PACKAGE_VERSION:I = -0x1


# instance fields
.field private final mPackageStatusFile:Landroid/util/AtomicFile;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "storageDir"    # Ljava/io/File;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "package-status.xml"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    .line 85
    iget-object v1, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->insertInitialPackageStatus()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getCurrentOptimisticLockId()I
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 250
    const/4 v2, 0x0

    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 251
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/android/server/timezone/PackageStatusStorage;->parseToPackageStatusTag(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 252
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v4, "optimisticLockId"

    invoke-static {v3, v4}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    .line 257
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 253
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/text/ParseException;

    const-string/jumbo v4, "Unable to read file"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 255
    .local v1, "e2":Ljava/text/ParseException;
    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 256
    throw v1

    .line 257
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e2":Ljava/text/ParseException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v5

    goto :goto_0

    .line 252
    :cond_1
    return v4

    .line 257
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_1
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_2
    if-eqz v5, :cond_4

    :try_start_5
    throw v5

    :catch_3
    move-exception v6

    if-nez v5, :cond_3

    move-object v5, v6

    goto :goto_2

    :cond_3
    if-eq v5, v6, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private static getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-static {p0, p1}, Lcom/android/server/timezone/PackageStatusStorage;->getNullableIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 376
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 377
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 379
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private static getNullableIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 359
    invoke-interface {p0, v3, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "attributeValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 362
    :try_start_0
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " missing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/text/ParseException;

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad integer for attributeName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-direct {v2, v3, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 363
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    return-object v3

    .line 366
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2
.end method

.method private getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;
    .locals 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 125
    const/4 v4, 0x0

    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    .line 126
    .local v4, "fis":Ljava/io/FileInputStream;
    invoke-static {v4}, Lcom/android/server/timezone/PackageStatusStorage;->parseToPackageStatusTag(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 127
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v7, "checkStatus"

    invoke-static {v5, v7}, Lcom/android/server/timezone/PackageStatusStorage;->getNullableIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 128
    .local v0, "checkStatus":Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 139
    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    move-object v7, v8

    :goto_0
    if-eqz v7, :cond_1

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    .end local v0    # "checkStatus":Ljava/lang/Integer;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/text/ParseException;

    const-string/jumbo v7, "Error reading package status"

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 137
    .local v3, "e2":Ljava/text/ParseException;
    invoke-virtual {v3, v2}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    throw v3

    .line 139
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e2":Ljava/text/ParseException;
    .restart local v0    # "checkStatus":Ljava/lang/Integer;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v7

    goto :goto_0

    .line 129
    :cond_1
    return-object v8

    .line 131
    :cond_2
    :try_start_3
    const-string/jumbo v7, "updateAppPackageVersion"

    invoke-static {v5, v7}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 132
    .local v6, "updateAppVersion":I
    const-string/jumbo v7, "dataAppPackageVersion"

    invoke-static {v5, v7}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    .line 133
    .local v1, "dataAppVersion":I
    new-instance v7, Lcom/android/server/timezone/PackageStatus;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 134
    new-instance v10, Lcom/android/server/timezone/PackageVersions;

    invoke-direct {v10, v6, v1}, Lcom/android/server/timezone/PackageVersions;-><init>(II)V

    .line 133
    invoke-direct {v7, v9, v10}, Lcom/android/server/timezone/PackageStatus;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 139
    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_2
    move-exception v8

    goto :goto_1

    .line 133
    :cond_4
    return-object v7

    .line 139
    .end local v0    # "checkStatus":Ljava/lang/Integer;
    .end local v1    # "dataAppVersion":I
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "updateAppVersion":I
    :catch_3
    move-exception v7

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_2
    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_5
    :goto_3
    if-eqz v8, :cond_7

    :try_start_8
    throw v8

    :catch_4
    move-exception v9

    if-nez v8, :cond_6

    move-object v8, v9

    goto :goto_3

    :cond_6
    if-eq v8, v9, :cond_5

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    throw v7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_1
    move-exception v7

    goto :goto_2
.end method

.method private insertInitialPackageStatus()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v0, v2

    .line 160
    .local v0, "initialOptimisticLockId":I
    invoke-direct {p0, v1, v0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V

    .line 162
    return v0
.end method

.method private static parseToPackageStatusTag(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 10
    .param p0, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 264
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 265
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 267
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 268
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "tag":Ljava/lang/String;
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const-string/jumbo v6, "PackageStatus"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 270
    return-object v3

    .line 273
    .end local v4    # "tag":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/text/ParseException;

    const-string/jumbo v7, "Unable to find PackageStatus tag"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 274
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Unable to configure parser"

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 276
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 277
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/text/ParseException;

    const-string/jumbo v6, "Error reading XML"

    invoke-direct {v2, v6, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 278
    .local v2, "e2":Ljava/text/ParseException;
    invoke-virtual {v0, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 279
    throw v2
.end method

.method private recoverFromBadData(Ljava/lang/Exception;)I
    .locals 3
    .param p1, "cause"    # Ljava/lang/Exception;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 144
    iget-object v2, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->insertInitialPackageStatus()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 149
    .local v1, "fatal":Ljava/lang/IllegalStateException;
    invoke-virtual {v1, p1}, Ljava/lang/IllegalStateException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 150
    throw v1
.end method

.method private writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V
    .locals 10
    .param p1, "status"    # Ljava/lang/Integer;
    .param p2, "optimisticLockId"    # I
    .param p3, "packageVersions"    # Lcom/android/server/timezone/PackageVersions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 306
    if-nez p1, :cond_0

    move v9, v7

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    if-eq v9, v7, :cond_2

    .line 307
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 308
    const-string/jumbo v8, "Provide both status and packageVersions, or neither."

    .line 307
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    move v9, v8

    .line 306
    goto :goto_0

    :cond_1
    move v7, v8

    goto :goto_1

    .line 311
    :cond_2
    const/4 v2, 0x0

    .line 313
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 314
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 315
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 316
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 317
    const/4 v3, 0x0

    .line 318
    .local v3, "namespace":Ljava/lang/String;
    const-string/jumbo v7, "PackageStatus"

    invoke-interface {v4, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 319
    if-nez p1, :cond_3

    const-string/jumbo v5, ""

    .line 320
    .local v5, "statusAttributeValue":Ljava/lang/String;
    :goto_2
    const-string/jumbo v7, "checkStatus"

    invoke-interface {v4, v3, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    const-string/jumbo v7, "optimisticLockId"

    .line 322
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 321
    invoke-interface {v4, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    if-nez p1, :cond_4

    .line 324
    const/4 v6, -0x1

    .line 325
    .local v6, "updateAppVersion":I
    :goto_3
    const-string/jumbo v7, "updateAppPackageVersion"

    .line 326
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 325
    invoke-interface {v4, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    if-nez p1, :cond_5

    .line 328
    const/4 v0, -0x1

    .line 329
    .local v0, "dataAppVersion":I
    :goto_4
    const-string/jumbo v7, "dataAppPackageVersion"

    .line 330
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 329
    invoke-interface {v4, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    const-string/jumbo v7, "PackageStatus"

    invoke-interface {v4, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 333
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 334
    iget-object v7, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 342
    return-void

    .line 319
    .end local v0    # "dataAppVersion":I
    .end local v5    # "statusAttributeValue":Ljava/lang/String;
    .end local v6    # "updateAppVersion":I
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "statusAttributeValue":Ljava/lang/String;
    goto :goto_2

    .line 324
    :cond_4
    iget v6, p3, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:I

    .restart local v6    # "updateAppVersion":I
    goto :goto_3

    .line 328
    :cond_5
    iget v0, p3, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "dataAppVersion":I
    goto :goto_4

    .line 335
    .end local v0    # "dataAppVersion":I
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "namespace":Ljava/lang/String;
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "statusAttributeValue":Ljava/lang/String;
    .end local v6    # "updateAppVersion":I
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/io/IOException;
    if-eqz v2, :cond_6

    .line 337
    iget-object v7, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 339
    :cond_6
    throw v1
.end method

.method private writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z
    .locals 3
    .param p1, "optimisticLockId"    # I
    .param p2, "newOptimisticLockId"    # I
    .param p3, "status"    # Ljava/lang/Integer;
    .param p4, "packageVersions"    # Lcom/android/server/timezone/PackageVersions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 290
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 291
    .local v0, "currentOptimisticLockId":I
    if-eq v0, p1, :cond_0

    .line 292
    return v2

    .line 294
    .end local v0    # "currentOptimisticLockId":I
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/text/ParseException;
    invoke-direct {p0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    .line 296
    return v2

    .line 299
    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v0    # "currentOptimisticLockId":I
    :cond_0
    invoke-direct {p0, p3, p2, p4}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V

    .line 300
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method deleteFileForTests()V
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 98
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Package status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatus()Lcom/android/server/timezone/PackageStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public forceCheckStateForTests(ILcom/android/server/timezone/PackageVersions;)V
    .locals 3
    .param p1, "checkStatus"    # I
    .param p2, "packageVersions"    # Lcom/android/server/timezone/PackageVersions;

    .prologue
    .line 346
    monitor-enter p0

    .line 348
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v1

    .line 350
    .local v1, "optimisticLockId":I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 349
    invoke-direct {p0, v1, v1, v2, p2}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 355
    return-void

    .line 351
    .end local v1    # "optimisticLockId":I
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method generateCheckToken(Lcom/android/server/timezone/PackageVersions;)Lcom/android/server/timezone/CheckToken;
    .locals 7
    .param p1, "currentInstalledVersions"    # Lcom/android/server/timezone/PackageVersions;

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "currentInstalledVersions == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 174
    :cond_0
    monitor-enter p0

    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 185
    .local v3, "optimisticLockId":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .line 188
    .local v2, "newOptimisticLockId":I
    const/4 v5, 0x1

    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 187
    invoke-direct {p0, v3, v2, v5, p1}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v4

    .line 190
    .local v4, "statusUpdated":Z
    if-nez v4, :cond_1

    .line 191
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Unable to update status to CHECK_STARTED. synchronization failure?"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .end local v4    # "statusUpdated":Z
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "newOptimisticLockId":I
    .end local v3    # "optimisticLockId":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 178
    :catch_1
    move-exception v1

    .line 179
    .local v1, "e":Ljava/text/ParseException;
    :try_start_3
    const-string/jumbo v5, "timezone.PackageStatusStorage"

    const-string/jumbo v6, "Unable to find optimistic lock ID from package status"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    .restart local v3    # "optimisticLockId":I
    goto :goto_0

    .line 194
    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v2    # "newOptimisticLockId":I
    .restart local v4    # "statusUpdated":Z
    :cond_1
    :try_start_4
    new-instance v5, Lcom/android/server/timezone/CheckToken;

    invoke-direct {v5, v2, p1}, Lcom/android/server/timezone/CheckToken;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v5
.end method

.method getPackageStatus()Lcom/android/server/timezone/PackageStatus;
    .locals 4

    .prologue
    .line 105
    monitor-enter p0

    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/text/ParseException;
    :try_start_1
    const-string/jumbo v2, "timezone.PackageStatusStorage"

    const-string/jumbo v3, "Package status invalid, resetting and retrying"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    invoke-direct {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 116
    :catch_1
    move-exception v1

    .line 117
    .local v1, "e2":Ljava/text/ParseException;
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Recovery from bad file failed"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v1    # "e2":Ljava/text/ParseException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method markChecked(Lcom/android/server/timezone/CheckToken;Z)Z
    .locals 6
    .param p1, "checkToken"    # Lcom/android/server/timezone/CheckToken;
    .param p2, "succeeded"    # Z

    .prologue
    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    iget v2, p1, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .local v2, "optimisticLockId":I
    add-int/lit8 v1, v2, 0x1

    .line 238
    .local v1, "newOptimisticLockId":I
    if-eqz p2, :cond_0

    const/4 v3, 0x2

    .line 241
    .local v3, "status":I
    :goto_0
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    .line 240
    invoke-direct {p0, v2, v1, v4, v5}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    monitor-exit p0

    return v4

    .line 238
    .end local v3    # "status":I
    :cond_0
    const/4 v3, 0x3

    .restart local v3    # "status":I
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "newOptimisticLockId":I
    .end local v2    # "optimisticLockId":I
    .end local v3    # "status":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method resetCheckState()V
    .locals 7

    .prologue
    .line 205
    monitor-enter p0

    .line 208
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 216
    .local v3, "optimisticLockId":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .line 219
    .local v2, "newOptimisticLockId":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 218
    :try_start_1
    invoke-direct {p0, v3, v2, v4, v5}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 220
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetCheckState: Unable to reset package status, newOptimisticLockId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "newOptimisticLockId":I
    .end local v3    # "optimisticLockId":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 209
    :catch_1
    move-exception v1

    .line 210
    .local v1, "e":Ljava/text/ParseException;
    :try_start_3
    const-string/jumbo v4, "timezone.PackageStatusStorage"

    const-string/jumbo v5, "resetCheckState: Unable to find optimistic lock ID from package status"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    .restart local v3    # "optimisticLockId":I
    goto :goto_0

    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v2    # "newOptimisticLockId":I
    :cond_0
    monitor-exit p0

    .line 227
    return-void
.end method
