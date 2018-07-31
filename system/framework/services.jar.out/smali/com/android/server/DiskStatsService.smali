.class public Lcom/android/server/DiskStatsService;
.super Landroid/os/Binder;
.source "DiskStatsService.java"


# static fields
.field private static final DISKSTATS_DUMP_FILE:Ljava/lang/String; = "/data/system/diskstats_cache.json"

.field private static final TAG:Ljava/lang/String; = "DiskStatsService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/android/server/storage/DiskStatsLoggingService;->schedule(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method private hasOption([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 190
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 191
    .local v0, "opt":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    const/4 v1, 0x1

    return v1

    .line 190
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "opt":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private reportCachedValues(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 201
    :try_start_0
    const-string/jumbo v3, "/data/system/diskstats_cache.json"

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "jsonString":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "App Size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    const-string/jumbo v3, "appSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 205
    const-string/jumbo v3, "App Cache Size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v3, "cacheSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 207
    const-string/jumbo v3, "Photos Size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v3, "photosSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 209
    const-string/jumbo v3, "Videos Size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v3, "videosSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 211
    const-string/jumbo v3, "Audio Size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v3, "audioSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 213
    const-string/jumbo v3, "Downloads Size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    const-string/jumbo v3, "downloadsSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 215
    const-string/jumbo v3, "System Size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v3, "systemSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 217
    const-string/jumbo v3, "Other Size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v3, "otherSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 219
    const-string/jumbo v3, "Package Names: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v3, "packageNames"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 221
    const-string/jumbo v3, "App Sizes: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v3, "appSizes"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 223
    const-string/jumbo v3, "Cache Sizes: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    const-string/jumbo v3, "cacheSizes"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "jsonString":Ljava/lang/String;
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DiskStatsService"

    const-string/jumbo v4, "exception reading diskstats cache file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private reportCachedValuesProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 22
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .prologue
    .line 232
    :try_start_0
    const-string/jumbo v18, "/data/system/diskstats_cache.json"

    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 233
    .local v13, "jsonString":Ljava/lang/String;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 234
    .local v12, "json":Lorg/json/JSONObject;
    const-wide v18, 0x11100000006L

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 237
    .local v8, "cachedValuesToken":J
    const-string/jumbo v18, "appSize"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 236
    const-wide v20, 0x10400000001L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 239
    const-string/jumbo v18, "cacheSize"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 238
    const-wide v20, 0x10400000002L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 241
    const-string/jumbo v18, "photosSize"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 240
    const-wide v20, 0x10400000003L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 243
    const-string/jumbo v18, "videosSize"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 242
    const-wide v20, 0x10400000004L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 245
    const-string/jumbo v18, "audioSize"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 244
    const-wide v20, 0x10400000005L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 247
    const-string/jumbo v18, "downloadsSize"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 246
    const-wide v20, 0x10400000006L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 249
    const-string/jumbo v18, "systemSize"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 248
    const-wide v20, 0x10400000007L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 251
    const-string/jumbo v18, "otherSize"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 250
    const-wide v20, 0x10400000008L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 253
    const-string/jumbo v18, "packageNames"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 254
    .local v15, "packageNamesArray":Lorg/json/JSONArray;
    const-string/jumbo v18, "appSizes"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 255
    .local v6, "appSizesArray":Lorg/json/JSONArray;
    const-string/jumbo v18, "cacheSizes"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 256
    .local v7, "cacheSizesArray":Lorg/json/JSONArray;
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 257
    .local v14, "len":I
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ne v14, v0, :cond_0

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ne v14, v0, :cond_0

    .line 258
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v14, :cond_1

    .line 259
    const-wide v18, 0x21100000009L

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v16

    .line 262
    .local v16, "packageToken":J
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 261
    const-wide v20, 0x10e00000001L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 263
    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v18

    const-wide v20, 0x10400000002L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 264
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v18

    const-wide v20, 0x10400000003L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 266
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 258
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 269
    .end local v11    # "i":I
    .end local v16    # "packageToken":J
    :cond_0
    const-string/jumbo v18, "DiskStatsService"

    const-string/jumbo v19, "Sizes of packageNamesArray, appSizesArray and cacheSizesArray are not the same"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v6    # "appSizesArray":Lorg/json/JSONArray;
    .end local v7    # "cacheSizesArray":Lorg/json/JSONArray;
    .end local v8    # "cachedValuesToken":J
    .end local v12    # "json":Lorg/json/JSONObject;
    .end local v13    # "jsonString":Ljava/lang/String;
    .end local v14    # "len":I
    .end local v15    # "packageNamesArray":Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 274
    :catch_0
    move-exception v10

    .line 275
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v18, "DiskStatsService"

    const-string/jumbo v19, "exception reading diskstats cache file"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V
    .locals 16
    .param p1, "path"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p5, "folderType"    # I

    .prologue
    .line 152
    :try_start_0
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 153
    .local v7, "statfs":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v4, v12

    .line 154
    .local v4, "bsize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v2, v12

    .line 155
    .local v2, "avail":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v12

    int-to-long v10, v12

    .line 156
    .local v10, "total":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-gtz v12, :cond_1

    .line 157
    :cond_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    .line 158
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Invalid stat: bsize="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " avail="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " total="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 157
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 177
    .end local v2    # "avail":J
    .end local v4    # "bsize":J
    .end local v7    # "statfs":Landroid/os/StatFs;
    .end local v10    # "total":J
    :catch_0
    move-exception v6

    .line 178
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    if-eqz p4, :cond_3

    .line 185
    :goto_0
    return-void

    .line 161
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "avail":J
    .restart local v4    # "bsize":J
    .restart local v7    # "statfs":Landroid/os/StatFs;
    .restart local v10    # "total":J
    :cond_1
    if-eqz p4, :cond_2

    .line 162
    const-wide v12, 0x21100000004L

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 163
    .local v8, "freeSpaceToken":J
    const-wide v12, 0x11000000001L

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v0, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 164
    mul-long v12, v2, v4

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    const-wide v14, 0x10400000002L

    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 165
    mul-long v12, v10, v4

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    const-wide v14, 0x10400000003L

    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 166
    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 187
    .end local v8    # "freeSpaceToken":J
    :goto_1
    return-void

    .line 168
    :cond_2
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v12, "-Free: "

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    mul-long v12, v2, v4

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 171
    const-string/jumbo v12, "K / "

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    mul-long v12, v10, v4

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 173
    const-string/jumbo v12, "K total = "

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    const-wide/16 v12, 0x64

    mul-long/2addr v12, v2

    div-long/2addr v12, v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 175
    const-string/jumbo v12, "% free"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 181
    .end local v2    # "avail":J
    .end local v4    # "bsize":J
    .end local v7    # "statfs":Landroid/os/StatFs;
    .end local v10    # "total":J
    .restart local v6    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    const-string/jumbo v12, "-Error: "

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "DiskStatsService"

    move-object/from16 v0, p2

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 69
    :cond_0
    const/16 v2, 0x200

    new-array v0, v2, [B

    move-object/from16 v19, v0

    .line 70
    .local v19, "junk":[B
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, v19

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_1

    move/from16 v0, v18

    int-to-byte v2, v0

    aput-byte v2, v19, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 72
    :cond_1
    new-instance v21, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system/perftest.tmp"

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .local v21, "tmp":Ljava/io/File;
    const/16 v16, 0x0

    .line 74
    .local v16, "fos":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 76
    .local v14, "error":Ljava/io/IOException;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 78
    .local v10, "before":J
    :try_start_0
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .local v17, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    if-eqz v17, :cond_2

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    move-object/from16 v16, v17

    .line 86
    .end local v14    # "error":Ljava/io/IOException;
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 87
    .local v8, "after":J
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 89
    :cond_4
    const-string/jumbo v2, "--proto"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/DiskStatsService;->hasOption([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    .line 90
    .local v20, "protoFormat":Z
    const/4 v6, 0x0

    .line 92
    .local v6, "proto":Landroid/util/proto/ProtoOutputStream;
    if-eqz v20, :cond_a

    .line 93
    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    .end local v6    # "proto":Landroid/util/proto/ProtoOutputStream;
    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 94
    .local v6, "proto":Landroid/util/proto/ProtoOutputStream;
    const/16 p2, 0x0

    .line 95
    .local p2, "pw":Ljava/io/PrintWriter;
    if-eqz v14, :cond_8

    const/4 v2, 0x1

    :goto_3
    const-wide v4, 0x10d00000001L

    invoke-virtual {v6, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 96
    if-eqz v14, :cond_9

    .line 97
    invoke-virtual {v14}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v4, 0x10e00000002L

    invoke-virtual {v6, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 112
    .end local v6    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    :goto_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "Data"

    .line 113
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    .line 112
    invoke-direct/range {v2 .. v7}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 114
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "Cache"

    .line 115
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    .line 114
    invoke-direct/range {v2 .. v7}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 116
    new-instance v3, Ljava/io/File;

    const-string/jumbo v2, "/system"

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "System"

    .line 117
    const/4 v7, 0x2

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    .line 116
    invoke-direct/range {v2 .. v7}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 119
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v15

    .line 120
    .local v15, "fileBased":Z
    if-eqz v15, :cond_c

    const/4 v12, 0x0

    .line 121
    :goto_5
    if-eqz v20, :cond_f

    .line 122
    if-eqz v15, :cond_d

    .line 123
    const-wide v2, 0x11000000005L

    .line 124
    const/4 v4, 0x3

    .line 123
    invoke-virtual {v6, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 136
    :cond_5
    :goto_6
    if-eqz v20, :cond_10

    .line 137
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/DiskStatsService;->reportCachedValuesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 142
    :goto_7
    if-eqz v20, :cond_6

    .line 143
    invoke-virtual {v6}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 147
    :cond_6
    return-void

    .line 83
    .end local v8    # "after":J
    .end local v15    # "fileBased":Z
    .end local v20    # "protoFormat":Z
    .restart local v14    # "error":Ljava/io/IOException;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    .local p2, "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v13

    .local v13, "e":Ljava/io/IOException;
    goto/16 :goto_1

    .line 80
    .end local v13    # "e":Ljava/io/IOException;
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v13

    .line 81
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "e":Ljava/io/IOException;
    :goto_8
    move-object v14, v13

    .line 83
    .local v14, "error":Ljava/io/IOException;
    if-eqz v16, :cond_3

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v13

    goto/16 :goto_2

    .line 82
    .end local v13    # "e":Ljava/io/IOException;
    .local v14, "error":Ljava/io/IOException;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    .line 83
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    :goto_9
    if-eqz v16, :cond_7

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 82
    :cond_7
    :goto_a
    throw v2

    .line 83
    :catch_3
    move-exception v13

    .restart local v13    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 95
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "error":Ljava/io/IOException;
    .restart local v6    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v8    # "after":J
    .restart local v20    # "protoFormat":Z
    .local p2, "pw":Ljava/io/PrintWriter;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 99
    :cond_9
    sub-long v2, v8, v10

    const-wide v4, 0x10300000003L

    invoke-virtual {v6, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_4

    .line 102
    .local v6, "proto":Landroid/util/proto/ProtoOutputStream;
    .local p2, "pw":Ljava/io/PrintWriter;
    :cond_a
    if-eqz v14, :cond_b

    .line 103
    const-string/jumbo v2, "Test-Error: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v14}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 106
    :cond_b
    const-string/jumbo v2, "Latency: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    sub-long v2, v8, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 108
    const-string/jumbo v2, "ms [512B Data Write]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 120
    .end local v6    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "fileBased":Z
    :cond_c
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v12

    .local v12, "blockBased":Z
    goto :goto_5

    .line 125
    .end local v12    # "blockBased":Z
    :cond_d
    if-eqz v12, :cond_e

    .line 126
    const-wide v2, 0x11000000005L

    .line 127
    const/4 v4, 0x2

    .line 126
    invoke-virtual {v6, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_6

    .line 129
    :cond_e
    const-wide v2, 0x11000000005L

    .line 130
    const/4 v4, 0x1

    .line 129
    invoke-virtual {v6, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_6

    .line 132
    :cond_f
    if-eqz v15, :cond_5

    .line 133
    const-string/jumbo v2, "File-based Encryption: true"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 139
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/DiskStatsService;->reportCachedValues(Ljava/io/PrintWriter;)V

    goto/16 :goto_7

    .line 82
    .end local v8    # "after":J
    .end local v15    # "fileBased":Z
    .end local v20    # "protoFormat":Z
    .restart local v14    # "error":Ljava/io/IOException;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v2

    move-object/from16 v16, v17

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .local v16, "fos":Ljava/io/FileOutputStream;
    goto :goto_9

    .line 80
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v13

    .restart local v13    # "e":Ljava/io/IOException;
    move-object/from16 v16, v17

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_8
.end method
