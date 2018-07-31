.class Lcom/google/tagmanager/DataLayerPersistentStoreImpl;
.super Ljava/lang/Object;
.source "DataLayerPersistentStoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final CREATE_MAPS_TABLE:Ljava/lang/String;


# instance fields
.field private mClock:Lcom/google/tagmanager/Clock;

.field private final mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mMaxNumStoredItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "datalayer"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "ID"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "key"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "value"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "expires"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' STRING NOT NULL, \'%s\' BLOB NOT NULL, \'%s\' INTEGER NOT NULL);"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->CREATE_MAPS_TABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/Clock;Ljava/lang/String;ILjava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clock"    # Lcom/google/tagmanager/Clock;
    .param p3, "databaseName"    # Ljava/lang/String;
    .param p4, "maxNumStoredItems"    # I
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mClock:Lcom/google/tagmanager/Clock;

    .line 70
    iput p4, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mMaxNumStoredItems:I

    .line 71
    iput-object p5, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 72
    new-instance v0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;

    iget-object v1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;-><init>(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mDbHelper:Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;

    .line 73
    return-void
.end method

.method static synthetic access$300(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->CREATE_MAPS_TABLE:Ljava/lang/String;

    return-object v0
.end method
