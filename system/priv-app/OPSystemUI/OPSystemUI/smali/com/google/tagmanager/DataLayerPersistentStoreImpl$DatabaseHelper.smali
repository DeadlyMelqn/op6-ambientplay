.class Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataLayerPersistentStoreImpl.java"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/DataLayerPersistentStoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/DataLayerPersistentStoreImpl;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;->this$0:Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    .line 390
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 391
    return-void
.end method

.method private tablePresent(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 13
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 405
    const/4 v11, 0x0

    .line 407
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string/jumbo v1, "SQLITE_MASTER"

    const-string/jumbo v3, "name=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 414
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 419
    .local v8, "-l_4_I":I
    if-nez v11, :cond_0

    .line 420
    :goto_0
    return v8

    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 415
    .end local v8    # "-l_4_I":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 416
    .local v12, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error querying for table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    const/4 v9, 0x0

    .line 419
    .local v9, "-l_5_I":I
    if-nez v11, :cond_1

    .line 420
    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 419
    .end local v9    # "-l_5_I":I
    .end local v12    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v10

    .local v10, "-l_6_R":Ljava/lang/Object;
    if-nez v11, :cond_2

    .line 420
    :goto_2
    throw v10

    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private validateColumnsPresent(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 475
    const-string/jumbo v5, "SELECT * FROM datalayer WHERE 0"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 477
    .local v1, "c":Landroid/database/Cursor;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 479
    .local v3, "columns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "columnNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v4, v5, :cond_1

    .line 484
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 487
    const-string/jumbo v5, "key"

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 491
    :cond_0
    new-instance v5, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v6, "Database column missing"

    invoke-direct {v5, v6}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 481
    :cond_1
    :try_start_1
    aget-object v5, v2, v4

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 484
    .end local v2    # "columnNames":[Ljava/lang/String;
    .end local v4    # "i":I
    :catchall_0
    move-exception v0

    .local v0, "-l_6_R":Ljava/lang/Object;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 487
    .end local v0    # "-l_6_R":Ljava/lang/Object;
    .restart local v2    # "columnNames":[Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_2
    const-string/jumbo v5, "value"

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "ID"

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "expires"

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 494
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 497
    return-void

    .line 495
    :cond_3
    new-instance v5, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v6, "Database has extra columns"

    invoke-direct {v5, v6}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 434
    const/4 v0, 0x0

    .line 436
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 441
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    if-eqz v0, :cond_0

    .line 444
    :goto_1
    return-object v0

    .line 437
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 439
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v2, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;->this$0:Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    invoke-static {v2}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->access$300(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "google_tagmanager.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 442
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 501
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/FutureApis;->setOwnerOnlyReadWrite(Ljava/lang/String;)Z

    .line 502
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 451
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_0

    .line 460
    :goto_0
    const-string/jumbo v2, "datalayer"

    invoke-direct {p0, v2, p1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;->tablePresent(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;->validateColumnsPresent(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 465
    :goto_1
    return-void

    .line 452
    :cond_0
    const-string/jumbo v2, "PRAGMA journal_mode=memory"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 455
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .local v0, "-l_3_R":Ljava/lang/Object;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 461
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-static {}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 510
    return-void
.end method
