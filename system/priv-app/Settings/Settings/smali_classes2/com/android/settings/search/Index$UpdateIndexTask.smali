.class Lcom/android/settings/search/Index$UpdateIndexTask;
.super Landroid/os/AsyncTask;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateIndexTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/settings/search/Index$UpdateData;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/Index;


# direct methods
.method private constructor <init>(Lcom/android/settings/search/Index;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/search/Index;

    .prologue
    .line 1298
    iput-object p1, p0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/Index;Lcom/android/settings/search/Index$UpdateIndexTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/search/Index;
    .param p2, "-this1"    # Lcom/android/settings/search/Index$UpdateIndexTask;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/search/Index$UpdateIndexTask;-><init>(Lcom/android/settings/search/Index;)V

    return-void
.end method

.method private delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "columName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1455
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v0, v2

    .line 1457
    .local v0, "whereArgs":[Ljava/lang/String;
    const-string/jumbo v2, "prefs_index"

    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private processDataToDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)Z
    .locals 16
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1426
    .local p3, "dataToDelete":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableData;>;"
    const/4 v10, 0x0

    .line 1427
    .local v10, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1429
    .local v4, "current":J
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    .line 1430
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_0
    if-ge v6, v2, :cond_3

    .line 1431
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/SearchIndexableData;

    .line 1432
    .local v3, "data":Landroid/provider/SearchIndexableData;
    if-nez v3, :cond_1

    .line 1430
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1435
    :cond_1
    iget-object v11, v3, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1436
    const-string/jumbo v11, "class_name"

    iget-object v12, v3, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/android/settings/search/Index$UpdateIndexTask;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1438
    :cond_2
    instance-of v11, v3, Lcom/android/settings/search/SearchIndexableRaw;

    if-eqz v11, :cond_0

    move-object v7, v3

    .line 1439
    check-cast v7, Lcom/android/settings/search/SearchIndexableRaw;

    .line 1440
    .local v7, "raw":Lcom/android/settings/search/SearchIndexableRaw;
    iget-object v11, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1441
    const-string/jumbo v11, "data_title"

    iget-object v12, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/android/settings/search/Index$UpdateIndexTask;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1447
    .end local v3    # "data":Landroid/provider/SearchIndexableData;
    .end local v7    # "raw":Lcom/android/settings/search/SearchIndexableRaw;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1448
    .local v8, "now":J
    const-string/jumbo v11, "Index"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Deleting data for locale \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\' took "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1449
    sub-long v14, v8, v4

    .line 1448
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1449
    const-string/jumbo v13, " millis"

    .line 1448
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    return v10
.end method

.method private processDataToUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Z)Z
    .locals 18
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p5, "forceUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableData;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)Z"
        }
    .end annotation

    .prologue
    .line 1398
    .local p3, "dataToUpdate":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableData;>;"
    .local p4, "nonIndexableKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p5, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v13}, Lcom/android/settings/search/Index;->-get1(Lcom/android/settings/search/Index;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/android/settings/search/IndexDatabaseHelper;->isLocaleAlreadyIndexed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1399
    const-string/jumbo v13, "Index"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Locale \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\' is already indexed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const/4 v13, 0x1

    return v13

    .line 1403
    :cond_0
    const/4 v12, 0x0

    .line 1404
    .local v12, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1406
    .local v6, "current":J
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    .line 1407
    .local v4, "count":I
    const/4 v9, 0x0

    .local v9, "n":I
    :goto_0
    if-ge v9, v4, :cond_2

    .line 1408
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/SearchIndexableData;

    .line 1410
    .local v5, "data":Landroid/provider/SearchIndexableData;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v13, v0, v1, v5, v2}, Lcom/android/settings/search/Index;->-wrap5(Lcom/android/settings/search/Index;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1407
    .end local v5    # "data":Landroid/provider/SearchIndexableData;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1411
    .restart local v5    # "data":Landroid/provider/SearchIndexableData;
    :catch_0
    move-exception v8

    .line 1412
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "Index"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Cannot index: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v5, :cond_1

    iget-object v5, v5, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    .end local v5    # "data":Landroid/provider/SearchIndexableData;
    :cond_1
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1413
    const-string/jumbo v15, " for locale: "

    .line 1412
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1417
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1418
    .local v10, "now":J
    const-string/jumbo v13, "Index"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Indexing locale \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\' took "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1419
    sub-long v16, v10, v6

    .line 1418
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1419
    const-string/jumbo v15, " millis"

    .line 1418
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    return v12
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1312
    check-cast p1, [Lcom/android/settings/search/Index$UpdateData;

    invoke-virtual {p0, p1}, Lcom/android/settings/search/Index$UpdateIndexTask;->doInBackground([Lcom/android/settings/search/Index$UpdateData;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/settings/search/Index$UpdateData;)Ljava/lang/Void;
    .locals 20
    .param p1, "params"    # [Lcom/android/settings/search/Index$UpdateData;

    .prologue
    .line 1315
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    iget-object v5, v2, Lcom/android/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    .line 1316
    .local v5, "dataToUpdate":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableData;>;"
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v8, v2, Lcom/android/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    .line 1317
    .local v8, "dataToDelete":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableData;>;"
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v6, v2, Lcom/android/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    .line 1319
    .local v6, "nonIndexableKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-boolean v13, v2, Lcom/android/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 1320
    .local v13, "forceUpdate":Z
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-boolean v14, v2, Lcom/android/settings/search/Index$UpdateData;->fullIndex:Z

    .line 1323
    .local v14, "fullIndex":Z
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-boolean v0, v2, Lcom/android/settings/search/Index$UpdateData;->softwareUpgraded:Z

    move/from16 v16, v0

    .line 1324
    .local v16, "softwareUpgraded":Z
    const/4 v7, 0x0

    .line 1325
    .local v7, "shouldUpdate":Z
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v0, v2, Lcom/android/settings/search/Index$UpdateData;->versionInfo:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    .line 1328
    .local v17, "versionInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v2}, Lcom/android/settings/search/Index;->-wrap0(Lcom/android/settings/search/Index;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1329
    .local v3, "database":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v3, :cond_0

    .line 1330
    const-string/jumbo v2, "Index"

    const-string/jumbo v18, "Cannot update Index as I cannot get a writable database"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    const/4 v2, 0x0

    return-object v2

    .line 1334
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v2}, Lcom/android/settings/search/Index;->-get1(Lcom/android/settings/search/Index;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v15, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1335
    .local v15, "locale":Ljava/util/Locale;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1336
    .local v4, "localeStr":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 1337
    invoke-virtual {v15}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1347
    :cond_1
    if-nez v13, :cond_7

    move/from16 v7, v16

    .line 1351
    .end local v7    # "shouldUpdate":Z
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1354
    if-eqz v16, :cond_2

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v2}, Lcom/android/settings/search/Index;->-get1(Lcom/android/settings/search/Index;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstructDB(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1359
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1360
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v8}, Lcom/android/settings/search/Index$UpdateIndexTask;->processDataToDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)Z

    .line 1362
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    move-object/from16 v2, p0

    .line 1364
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/search/Index$UpdateIndexTask;->processDataToUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Z)Z

    .line 1368
    :cond_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1370
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1372
    if-eqz v14, :cond_5

    .line 1373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v2}, Lcom/android/settings/search/Index;->-get1(Lcom/android/settings/search/Index;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/settings/search/IndexDatabaseHelper;->setLocaleIndexed(Landroid/content/Context;Ljava/lang/String;)V

    .line 1377
    :cond_5
    if-eqz v16, :cond_6

    .line 1378
    const-string/jumbo v2, "Index"

    const-string/jumbo v18, "update versionCode file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 1380
    .local v10, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 1382
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v2}, Lcom/android/settings/search/Index;->-get1(Lcom/android/settings/search/Index;)Landroid/content/Context;

    move-result-object v19

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1381
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Lcom/android/settings/search/IndexDatabaseHelper;->setAppVersionCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1387
    .end local v3    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "localeStr":Ljava/lang/String;
    .end local v5    # "dataToUpdate":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableData;>;"
    .end local v6    # "nonIndexableKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "dataToDelete":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableData;>;"
    .end local v10    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "entry$iterator":Ljava/util/Iterator;
    .end local v13    # "forceUpdate":Z
    .end local v14    # "fullIndex":Z
    .end local v15    # "locale":Ljava/util/Locale;
    .end local v16    # "softwareUpgraded":Z
    .end local v17    # "versionInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .line 1388
    .local v9, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string/jumbo v2, "Index"

    const-string/jumbo v18, "Unable to index search, out of space"

    move-object/from16 v0, v18

    invoke-static {v2, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1391
    .end local v9    # "e":Landroid/database/sqlite/SQLiteFullException;
    :cond_6
    :goto_2
    const/4 v2, 0x0

    return-object v2

    .line 1347
    .restart local v3    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "localeStr":Ljava/lang/String;
    .restart local v5    # "dataToUpdate":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableData;>;"
    .restart local v6    # "nonIndexableKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v7    # "shouldUpdate":Z
    .restart local v8    # "dataToDelete":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableData;>;"
    .restart local v13    # "forceUpdate":Z
    .restart local v14    # "fullIndex":Z
    .restart local v15    # "locale":Ljava/util/Locale;
    .restart local v16    # "softwareUpgraded":Z
    .restart local v17    # "versionInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1369
    .end local v7    # "shouldUpdate":Z
    :catchall_0
    move-exception v2

    .line 1370
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1369
    throw v2

    .line 1384
    .restart local v10    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v12    # "entry$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->clear()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1306
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/search/Index$UpdateIndexTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 1308
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1309
    iget-object v0, p0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v0}, Lcom/android/settings/search/Index;->-get3(Lcom/android/settings/search/Index;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1310
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1302
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1303
    iget-object v0, p0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v0}, Lcom/android/settings/search/Index;->-get3(Lcom/android/settings/search/Index;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1304
    return-void
.end method
