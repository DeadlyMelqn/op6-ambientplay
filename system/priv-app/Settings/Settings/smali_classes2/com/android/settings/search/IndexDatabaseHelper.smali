.class public Lcom/android/settings/search/IndexDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IndexDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/IndexDatabaseHelper$IndexColumns;,
        Lcom/android/settings/search/IndexDatabaseHelper$MetaColumns;,
        Lcom/android/settings/search/IndexDatabaseHelper$SavedQueriesColums;,
        Lcom/android/settings/search/IndexDatabaseHelper$Tables;
    }
.end annotation


# static fields
.field private static final CREATE_INDEX_TABLE:Ljava/lang/String; = "CREATE VIRTUAL TABLE prefs_index USING fts4(locale, data_rank, data_title, data_title_normalized, data_summary_on, data_summary_on_normalized, data_summary_off, data_summary_off_normalized, data_entries, data_keywords, screen_title, class_name, icon, intent_action, intent_target_package, intent_target_class, enabled, data_key_reference, user_id);"

.field private static final CREATE_META_TABLE:Ljava/lang/String; = "CREATE TABLE meta_index(build VARCHAR(32) NOT NULL, build_id VARCHAR(64) NOT NULL)"

.field private static final CREATE_SAVED_QUERIES_TABLE:Ljava/lang/String; = "CREATE TABLE saved_queries(query VARCHAR(64) NOT NULL, timestamp INTEGER)"

.field private static final DATABASE_NAME:Ljava/lang/String; = "search_index.db"

.field private static final DATABASE_VERSION:I = 0x74

.field private static final INDEX:Ljava/lang/String; = "index"

.field private static final INSERT_BUILD_VERSION:Ljava/lang/String;

.field private static final SELECT_BUILD_ID:Ljava/lang/String; = "SELECT build_id FROM meta_index LIMIT 1;"

.field private static final SELECT_BUILD_VERSION:Ljava/lang/String; = "SELECT build FROM meta_index LIMIT 1;"

.field private static final TAG:Ljava/lang/String; = "IndexDatabaseHelper"

.field private static final VERSION_CODE:Ljava/lang/String; = "versions"

.field private static sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "INSERT INTO meta_index VALUES (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    const-string/jumbo v1, "\', \'"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    const-string/jumbo v1, "\');"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    sput-object v0, Lcom/android/settings/search/IndexDatabaseHelper;->INSERT_BUILD_VERSION:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    const-string/jumbo v0, "search_index.db"

    const/4 v1, 0x0

    const/16 v2, 0x74

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 178
    iput-object p1, p0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    .line 179
    return-void
.end method

.method private bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 187
    const-string/jumbo v0, "CREATE VIRTUAL TABLE prefs_index USING fts4(locale, data_rank, data_title, data_title_normalized, data_summary_on, data_summary_on_normalized, data_summary_off, data_summary_off_normalized, data_entries, data_keywords, screen_title, class_name, icon, intent_action, intent_target_package, intent_target_class, enabled, data_key_reference, user_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v0, "CREATE TABLE meta_index(build VARCHAR(32) NOT NULL, build_id VARCHAR(64) NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v0, "CREATE TABLE saved_queries(query VARCHAR(64) NOT NULL, timestamp INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/android/settings/search/IndexDatabaseHelper;->INSERT_BUILD_VERSION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    const-string/jumbo v0, "IndexDatabaseHelper"

    const-string/jumbo v1, "Bootstrapped database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public static clearAppVersionCode(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    const-string/jumbo v0, "versions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    return-void
.end method

.method public static clearLocalesIndexed(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    const-string/jumbo v0, "index"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/search/IndexDatabaseHelper;->clearLocalesIndexed(Landroid/content/Context;)V

    .line 337
    iget-object v0, p0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/search/IndexDatabaseHelper;->clearAppVersionCode(Landroid/content/Context;)V

    .line 339
    const-string/jumbo v0, "DROP TABLE IF EXISTS meta_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 340
    const-string/jumbo v0, "DROP TABLE IF EXISTS prefs_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 341
    const-string/jumbo v0, "DROP TABLE IF EXISTS saved_queries"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method private getBuildId(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 316
    .local v2, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .line 318
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v3, "SELECT build_id FROM meta_index LIMIT 1;"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 319
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 322
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "IndexDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getBuildId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    if-eqz v0, :cond_1

    .line 327
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 330
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v2

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "IndexDatabaseHelper"

    const-string/jumbo v4, "Cannot get build Id from Index metadata"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    if-eqz v0, :cond_1

    .line 327
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 325
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 326
    if-eqz v0, :cond_2

    .line 327
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_2
    throw v3
.end method

.method private getBuildVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 236
    const/4 v2, 0x0

    .line 237
    .local v2, "version":Ljava/lang/String;
    const/4 v0, 0x0

    .line 239
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v3, "SELECT build FROM meta_index LIMIT 1;"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 240
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 243
    .end local v2    # "version":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "IndexDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getBuildVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    if-eqz v0, :cond_1

    .line 248
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 251
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v2

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "IndexDatabaseHelper"

    const-string/jumbo v4, "Cannot get build version from Index metadata"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    if-eqz v0, :cond_1

    .line 248
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 246
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 247
    if-eqz v0, :cond_2

    .line 248
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_2
    throw v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/settings/search/IndexDatabaseHelper;

    monitor-enter v1

    .line 170
    :try_start_0
    sget-object v0, Lcom/android/settings/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/android/settings/search/IndexDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/search/IndexDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;

    .line 173
    :cond_0
    sget-object v0, Lcom/android/settings/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isLocaleAlreadyIndexed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 263
    const-string/jumbo v0, "index"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPackageNamesMatched(Landroid/content/Context;Ljava/util/List;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "providersName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 293
    const-string/jumbo v2, "versions"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 296
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 297
    return v4

    .line 300
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 301
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 302
    return v4

    .line 300
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static isVersionCodeMatched(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newVersionCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 278
    const-string/jumbo v1, "versions"

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "oldVersionCode":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 280
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 279
    if-eqz v1, :cond_2

    .line 281
    :cond_1
    const-string/jumbo v1, "IndexDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mismatched:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 282
    const-string/jumbo v3, ", newVersionCode"

    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 282
    const-string/jumbo v3, ", oldVersionCode"

    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return v4

    .line 286
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 232
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 233
    return-void
.end method

.method public static reconstructDB(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 311
    invoke-static {p0}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 312
    return-void
.end method

.method public static setAppVersionCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 272
    const-string/jumbo v0, "versions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    return-void
.end method

.method public static setLocaleIndexed(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 259
    const-string/jumbo v0, "index"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 184
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 224
    const-string/jumbo v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Detected schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    const-string/jumbo v2, "Index needs to be rebuilt for schema version \'"

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    const-string/jumbo v2, "\'."

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 228
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 198
    const-string/jumbo v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Using schema version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->getBuildVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->getBuildId(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 201
    if-eqz v0, :cond_1

    .line 204
    :cond_0
    const-string/jumbo v0, "IndexDatabaseHelper"

    const-string/jumbo v1, "Index needs to be rebuilt as build-version is not the same"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_1
    const-string/jumbo v0, "IndexDatabaseHelper"

    const-string/jumbo v1, "Index is fine"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 214
    const/16 v0, 0x74

    if-ge p2, v0, :cond_0

    .line 215
    const-string/jumbo v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Detected schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    const-string/jumbo v2, "Index needs to be rebuilt for schema version \'"

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    const-string/jumbo v2, "\'."

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 220
    :cond_0
    return-void
.end method
