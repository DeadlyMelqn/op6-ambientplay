.class Lcom/google/tagmanager/ResourceStorageImpl;
.super Ljava/lang/Object;
.source "ResourceStorageImpl.java"

# interfaces
.implements Lcom/google/tagmanager/Container$ResourceStorage;


# static fields
.field private static final SAVED_RESOURCE_FILENAME_PREFIX:Ljava/lang/String; = "resource_"

.field private static final SAVED_RESOURCE_SUB_DIR:Ljava/lang/String; = "google_tagmanager"


# instance fields
.field private mCallback:Lcom/google/tagmanager/LoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/LoadCallback",
            "<",
            "Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final mContainerId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContainerId:Ljava/lang/String;

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 46
    return-void
.end method

.method private stringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 246
    .local v3, "writer":Ljava/io/Writer;
    const/16 v4, 0x400

    new-array v0, v4, [C

    .line 247
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 249
    .local v2, "reader":Ljava/io/Reader;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "n":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 252
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 250
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 202
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getResourceFile()Ljava/io/File;
    .locals 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resource_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContainerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "google_tagmanager"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 241
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public loadExpandedResourceFromJsonAsset(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .locals 10
    .param p1, "assetFile"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loading default container from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 173
    iget-object v7, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 174
    .local v3, "assets":Landroid/content/res/AssetManager;
    if-eqz v3, :cond_0

    .line 178
    const/4 v6, 0x0

    .line 180
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 181
    invoke-direct {p0, v6}, Lcom/google/tagmanager/ResourceStorageImpl;->stringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/tagmanager/JsonUtils;->expandedResourceFromJsonString(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 189
    .local v0, "-l_4_R":Ljava/lang/Object;
    if-nez v6, :cond_1

    .line 194
    :goto_0
    return-object v0

    .line 175
    .end local v0    # "-l_4_R":Ljava/lang/Object;
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_0
    const-string/jumbo v7, "Looking for default JSON container in package, but no assets were found."

    invoke-static {v7}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 176
    return-object v9

    .line 191
    .restart local v0    # "-l_4_R":Ljava/lang/Object;
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v7

    goto :goto_0

    .line 182
    .end local v0    # "-l_4_R":Ljava/lang/Object;
    .end local v6    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    .line 183
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No asset file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " found (or errors reading it)."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    const/4 v1, 0x0

    .line 189
    .local v1, "-l_5_R":Ljava/lang/Object;
    if-nez v6, :cond_2

    .line 194
    :goto_1
    return-object v1

    .line 191
    :cond_2
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 192
    :catch_2
    move-exception v7

    goto :goto_1

    .line 185
    .end local v1    # "-l_5_R":Ljava/lang/Object;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 186
    .local v5, "e":Lorg/json/JSONException;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error parsing JSON file"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 187
    const/4 v1, 0x0

    .line 189
    .restart local v1    # "-l_5_R":Ljava/lang/Object;
    if-nez v6, :cond_3

    .line 194
    :goto_2
    return-object v1

    .line 191
    :cond_3
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 192
    :catch_4
    move-exception v7

    goto :goto_2

    .line 189
    .end local v1    # "-l_5_R":Ljava/lang/Object;
    .end local v5    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    .local v2, "-l_7_R":Ljava/lang/Object;
    if-nez v6, :cond_4

    .line 194
    :goto_3
    throw v2

    .line 191
    :cond_4
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    .line 192
    :catch_5
    move-exception v7

    goto :goto_3
.end method

.method public loadResourceFromContainerAsset(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 12
    .param p1, "assetFile"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 129
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Loading default container from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 130
    iget-object v9, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 131
    .local v3, "assets":Landroid/content/res/AssetManager;
    if-eqz v3, :cond_0

    .line 135
    const/4 v5, 0x0

    .line 137
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 144
    :try_start_1
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    .local v6, "output":Ljava/io/ByteArrayOutputStream;
    invoke-static {v5, v6}, Lcom/google/tagmanager/ResourceUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 146
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 147
    .local v7, "outputByteArray":[B
    invoke-static {v7}, Lcom/google/analytics/containertag/proto/Serving$Resource;->parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v8

    .line 148
    .local v8, "result":Lcom/google/analytics/containertag/proto/Serving$Resource;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Parsed default container: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    move-object v1, v8

    .line 155
    .local v1, "-l_7_R":Ljava/lang/Object;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 158
    :goto_0
    return-object v8

    .line 132
    .end local v1    # "-l_7_R":Ljava/lang/Object;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "outputByteArray":[B
    .end local v8    # "result":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :cond_0
    const-string/jumbo v9, "No assets found in package"

    invoke-static {v9}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 133
    return-object v11

    .line 138
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 139
    .local v4, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No asset file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " found."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 140
    return-object v11

    .line 156
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "-l_7_R":Ljava/lang/Object;
    .restart local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "outputByteArray":[B
    .restart local v8    # "result":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :catch_1
    move-exception v9

    goto :goto_0

    .line 150
    .end local v1    # "-l_7_R":Ljava/lang/Object;
    .end local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "outputByteArray":[B
    .end local v8    # "result":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :catch_2
    move-exception v4

    .line 151
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error when parsing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    const/4 v0, 0x0

    .line 155
    .local v0, "-l_5_R":Ljava/lang/Object;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 158
    :goto_1
    return-object v0

    .line 156
    :catch_3
    move-exception v9

    goto :goto_1

    .line 154
    .end local v0    # "-l_5_R":Ljava/lang/Object;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 155
    .local v2, "-l_9_R":Ljava/lang/Object;
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 158
    :goto_2
    throw v2

    .line 156
    :catch_4
    move-exception v9

    goto :goto_2
.end method

.method loadResourceFromDisk()V
    .locals 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 69
    iget-object v5, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    if-eqz v5, :cond_1

    .line 74
    iget-object v5, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    invoke-interface {v5}, Lcom/google/tagmanager/LoadCallback;->startLoad()V

    .line 76
    const-string/jumbo v5, "Start loading resource from disk ..."

    invoke-static {v5}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v5

    sget-object v6, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-ne v5, v6, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mContainerId:Ljava/lang/String;

    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/tagmanager/PreviewManager;->getContainerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 86
    :goto_0
    const/4 v4, 0x0

    .line 88
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4    # "stream":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceStorageImpl;->getResourceFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    .local v3, "input":Ljava/io/ByteArrayOutputStream;
    invoke-static {v4, v3}, Lcom/google/tagmanager/ResourceUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 98
    iget-object v5, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->parseFrom([B)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/tagmanager/LoadCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 110
    .end local v3    # "input":Ljava/io/ByteArrayOutputStream;
    :goto_1
    const-string/jumbo v5, "Load resource from disk finished."

    invoke-static {v5}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 111
    return-void

    .line 72
    .end local v4    # "stream":Ljava/io/FileInputStream;
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "callback must be set before execute"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    :cond_2
    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/tagmanager/PreviewManager;->getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;

    move-result-object v5

    sget-object v6, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 82
    :cond_3
    iget-object v5, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v6, Lcom/google/tagmanager/LoadCallback$Failure;->NOT_AVAILABLE:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v5, v6}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V

    .line 83
    return-void

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v5, "resource not on disk"

    invoke-static {v5}, Lcom/google/tagmanager/Log;->d(Ljava/lang/String;)V

    .line 91
    iget-object v5, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v6, Lcom/google/tagmanager/LoadCallback$Failure;->NOT_AVAILABLE:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v5, v6}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V

    .line 92
    return-void

    .line 105
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "input":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 106
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "error closing stream for reading resource from disk"

    invoke-static {v5}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 99
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "input":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v2

    .line 100
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v5, "error reading resource from disk"

    invoke-static {v5}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 101
    iget-object v5, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    sget-object v6, Lcom/google/tagmanager/LoadCallback$Failure;->IO_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-interface {v5, v6}, Lcom/google/tagmanager/LoadCallback;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 105
    :catch_3
    move-exception v2

    .line 106
    const-string/jumbo v5, "error closing stream for reading resource from disk"

    invoke-static {v5}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 103
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 104
    .local v0, "-l_3_R":Ljava/lang/Object;
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 107
    :goto_2
    throw v0

    .line 105
    :catch_4
    move-exception v2

    .line 106
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "error closing stream for reading resource from disk"

    invoke-static {v5}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public loadResourceFromDiskInBackground()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/tagmanager/ResourceStorageImpl$1;

    invoke-direct {v1, p0}, Lcom/google/tagmanager/ResourceStorageImpl$1;-><init>(Lcom/google/tagmanager/ResourceStorageImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method saveResourceToDisk(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)Z
    .locals 8
    .param p1, "resource"    # Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 209
    const/4 v5, 0x0

    .line 210
    .local v5, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceStorageImpl;->getResourceFile()Ljava/io/File;

    move-result-object v4

    .line 212
    .local v4, "file":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    .end local v5    # "stream":Ljava/io/FileOutputStream;
    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    const/4 v0, 0x1

    .line 227
    .local v0, "-l_4_I":I
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 230
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 213
    .end local v0    # "-l_4_I":I
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 214
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v6, "Error opening resource file for writing"

    invoke-static {v6}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 216
    return v7

    .line 228
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "-l_4_I":I
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 229
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v6, "error closing stream for writing resource to disk"

    invoke-static {v6}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    .end local v0    # "-l_4_I":I
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 222
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v6, "Error writing resource to disk. Removing resource from disk."

    invoke-static {v6}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 232
    :goto_1
    return v7

    .line 228
    :catch_3
    move-exception v3

    .line 229
    const-string/jumbo v6, "error closing stream for writing resource to disk"

    invoke-static {v6}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 226
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 227
    .local v1, "-l_6_R":Ljava/lang/Object;
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 230
    :goto_2
    throw v1

    .line 228
    :catch_4
    move-exception v3

    .line 229
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "error closing stream for writing resource to disk"

    invoke-static {v6}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public saveResourceToDiskInBackground(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)V
    .locals 2
    .param p1, "resource"    # Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/tagmanager/ResourceStorageImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/google/tagmanager/ResourceStorageImpl$2;-><init>(Lcom/google/tagmanager/ResourceStorageImpl;Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public setLoadCallback(Lcom/google/tagmanager/LoadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/LoadCallback",
            "<",
            "Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "callback":Lcom/google/tagmanager/LoadCallback;, "Lcom/google/tagmanager/LoadCallback<Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;>;"
    iput-object p1, p0, Lcom/google/tagmanager/ResourceStorageImpl;->mCallback:Lcom/google/tagmanager/LoadCallback;

    .line 51
    return-void
.end method
