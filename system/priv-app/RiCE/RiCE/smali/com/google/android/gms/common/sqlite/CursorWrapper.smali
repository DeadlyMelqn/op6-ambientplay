.class public Lcom/google/android/gms/common/sqlite/CursorWrapper;
.super Landroid/database/CursorWrapper;

# interfaces
.implements Landroid/database/CrossProcessCursor;


# instance fields
.field private zzxu:Landroid/database/AbstractWindowedCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    invoke-direct/range {p0 .. p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    instance-of v1, p1, Landroid/database/CursorWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/database/CursorWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/database/AbstractWindowedCursor;

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown type: "

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    check-cast p1, Landroid/database/AbstractWindowedCursor;

    iput-object p1, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzxu:Landroid/database/AbstractWindowedCursor;

    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzxu:Landroid/database/AbstractWindowedCursor;

    invoke-virtual {p0, p1, p2}, Landroid/database/AbstractWindowedCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzxu:Landroid/database/AbstractWindowedCursor;

    invoke-virtual/range {p0 .. p0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object p0

    return-object p0
.end method

.method public getWrappedCursor()Landroid/database/AbstractWindowedCursor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzxu:Landroid/database/AbstractWindowedCursor;

    return-object p0
.end method

.method public bridge synthetic getWrappedCursor()Landroid/database/Cursor;
    .locals 0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getWrappedCursor()Landroid/database/AbstractWindowedCursor;

    move-result-object p0

    return-object p0
.end method

.method public onMove(II)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzxu:Landroid/database/AbstractWindowedCursor;

    invoke-virtual {p0, p1, p2}, Landroid/database/AbstractWindowedCursor;->onMove(II)Z

    move-result p0

    return p0
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzxu:Landroid/database/AbstractWindowedCursor;

    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    return-void
.end method