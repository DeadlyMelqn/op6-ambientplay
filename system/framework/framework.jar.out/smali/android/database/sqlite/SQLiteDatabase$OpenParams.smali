.class public final Landroid/database/sqlite/SQLiteDatabase$OpenParams;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    }
.end annotation


# instance fields
.field private final mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private mIdleConnectionTimeout:J

.field private final mLookasideSlotCount:I

.field private final mLookasideSlotSize:I

.field private final mOpenFlags:I


# direct methods
.method static synthetic -get0(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 1
    .param p0, "-this"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object v0
.end method

.method static synthetic -get1(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/DatabaseErrorHandler;
    .locals 1
    .param p0, "-this"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-object v0
.end method

.method static synthetic -get2(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J
    .locals 2
    .param p0, "-this"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .prologue
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    return-wide v0
.end method

.method static synthetic -get3(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 1
    .param p0, "-this"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .prologue
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    return v0
.end method

.method static synthetic -get4(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 1
    .param p0, "-this"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .prologue
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    return v0
.end method

.method static synthetic -get5(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 1
    .param p0, "-this"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .prologue
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    return v0
.end method

.method private constructor <init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJ)V
    .locals 0
    .param p1, "openFlags"    # I
    .param p2, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;
    .param p4, "lookasideSlotSize"    # I
    .param p5, "lookasideSlotCount"    # I
    .param p6, "idleConnectionTimeout"    # J

    .prologue
    .line 2331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2334
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    .line 2335
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 2336
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 2337
    iput p4, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    .line 2338
    iput p5, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    .line 2339
    iput-wide p6, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    .line 2340
    return-void
.end method

.method synthetic constructor <init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJLandroid/database/sqlite/SQLiteDatabase$OpenParams;)V
    .locals 0
    .param p1, "openFlags"    # I
    .param p2, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;
    .param p4, "lookasideSlotSize"    # I
    .param p5, "lookasideSlotCount"    # I
    .param p6, "idleConnectionTimeout"    # J
    .param p8, "-this6"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .prologue
    invoke-direct/range {p0 .. p7}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;-><init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJ)V

    return-void
.end method


# virtual methods
.method public getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 1

    .prologue
    .line 2381
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object v0
.end method

.method public getErrorHandler()Landroid/database/DatabaseErrorHandler;
    .locals 1

    .prologue
    .line 2391
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-object v0
.end method

.method public getIdleConnectionTimeout()J
    .locals 2

    .prologue
    .line 2402
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    return-wide v0
.end method

.method public getLookasideSlotCount()I
    .locals 1

    .prologue
    .line 2360
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    return v0
.end method

.method public getLookasideSlotSize()I
    .locals 1

    .prologue
    .line 2349
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    return v0
.end method

.method public getOpenFlags()I
    .locals 1

    .prologue
    .line 2370
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    return v0
.end method

.method public toBuilder()Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 1

    .prologue
    .line 2412
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V

    return-object v0
.end method
