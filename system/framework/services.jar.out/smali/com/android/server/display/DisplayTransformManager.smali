.class public Lcom/android/server/display/DisplayTransformManager;
.super Ljava/lang/Object;
.source "DisplayTransformManager.java"


# static fields
.field static final COLOR_SATURATION_BOOSTED:F = 1.1f

.field static final COLOR_SATURATION_NATURAL:F = 1.0f

.field public static final LEVEL_COLOR_MATRIX_GRAYSCALE:I = 0xc8

.field public static final LEVEL_COLOR_MATRIX_INVERT_COLOR:I = 0x12c

.field public static final LEVEL_COLOR_MATRIX_NIGHT_DISPLAY:I = 0x64

.field static final PERSISTENT_PROPERTY_NATIVE_MODE:Ljava/lang/String; = "persist.sys.sf.native_mode"

.field static final PERSISTENT_PROPERTY_SATURATION:Ljava/lang/String; = "persist.sys.sf.color_saturation"

.field private static final SURFACE_FLINGER_TRANSACTION_COLOR_MATRIX:I = 0x3f7

.field private static final SURFACE_FLINGER_TRANSACTION_DALTONIZER:I = 0x3f6

.field private static final SURFACE_FLINGER_TRANSACTION_NATIVE_MODE:I = 0x3ff

.field private static final SURFACE_FLINGER_TRANSACTION_SATURATION:I = 0x3fe

.field private static final TAG:Ljava/lang/String; = "DisplayTransformManager"


# instance fields
.field private final mColorMatrix:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[F>;"
        }
    .end annotation
.end field

.field private mDaltonizerMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDaltonizerModeLock"
    .end annotation
.end field

.field private final mDaltonizerModeLock:Ljava/lang/Object;

.field private mSurfaceFlinger:Landroid/os/IBinder;

.field private final mTempColorMatrix:[[F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 78
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    const/16 v2, 0x10

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    .line 90
    return-void
.end method

.method private static applyColorMatrix([F)V
    .locals 7
    .param p0, "m"    # [F

    .prologue
    const/4 v5, 0x0

    .line 200
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 201
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_2

    .line 202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 203
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 204
    if-eqz p0, :cond_0

    .line 205
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 207
    aget v4, p0, v3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    :cond_1
    const/16 v4, 0x3f7

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 220
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_2
    :goto_1
    return-void

    .line 214
    .restart local v0    # "data":Landroid/os/Parcel;
    :catch_0
    move-exception v1

    .line 215
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v4, "DisplayTransformManager"

    const-string/jumbo v5, "Failed to set color transform"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 216
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    throw v4
.end method

.method private static applyDaltonizerMode(I)V
    .locals 6
    .param p0, "mode"    # I

    .prologue
    .line 226
    const-string/jumbo v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 227
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 229
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    const/16 v3, 0x3f6

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 239
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_0
    :goto_0
    return-void

    .line 233
    .restart local v0    # "data":Landroid/os/Parcel;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v3, "DisplayTransformManager"

    const-string/jumbo v4, "Failed to set Daltonizer mode"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 235
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    throw v3
.end method

.method private applySaturation(F)V
    .locals 6
    .param p1, "saturation"    # F

    .prologue
    .line 266
    const-string/jumbo v2, "persist.sys.sf.color_saturation"

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTransformManager;->getSurfaceFlinger()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 269
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 272
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTransformManager;->getSurfaceFlinger()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x3fe

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 279
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_0
    :goto_0
    return-void

    .line 273
    .restart local v0    # "data":Landroid/os/Parcel;
    :catch_0
    move-exception v1

    .line 274
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v2, "DisplayTransformManager"

    const-string/jumbo v3, "Failed to set saturation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 275
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    throw v2
.end method

.method private computeColorMatrixLocked()[F
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 159
    .local v6, "count":I
    if-nez v6, :cond_0

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    iget-object v8, p0, Lcom/android/server/display/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 164
    .local v8, "result":[[F
    aget-object v0, v8, v1

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 165
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    .line 167
    .local v4, "rhs":[F
    add-int/lit8 v0, v7, 0x1

    rem-int/lit8 v0, v0, 0x2

    aget-object v0, v8, v0

    rem-int/lit8 v2, v7, 0x2

    aget-object v2, v8, v2

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 165
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 169
    .end local v4    # "rhs":[F
    :cond_1
    rem-int/lit8 v0, v6, 0x2

    aget-object v0, v8, v0

    return-object v0
.end method

.method public static isNativeModeEnabled()Z
    .locals 2

    .prologue
    .line 242
    const-string/jumbo v0, "persist.sys.sf.native_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setNativeMode(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 285
    const-string/jumbo v4, "persist.sys.sf.native_mode"

    if-eqz p1, :cond_1

    const-string/jumbo v2, "1"

    :goto_0
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTransformManager;->getSurfaceFlinger()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 288
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 289
    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTransformManager;->getSurfaceFlinger()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x3ff

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 298
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_0
    :goto_2
    return-void

    .line 285
    :cond_1
    const-string/jumbo v2, "0"

    goto :goto_0

    .restart local v0    # "data":Landroid/os/Parcel;
    :cond_2
    move v2, v3

    .line 289
    goto :goto_1

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v2, "DisplayTransformManager"

    const-string/jumbo v3, "Failed to set native mode"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .line 294
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    throw v2
.end method


# virtual methods
.method public getColorMatrix(I)[F
    .locals 4
    .param p1, "key"    # I

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v2, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v2

    .line 104
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .local v0, "value":[F
    if-nez v0, :cond_0

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    :try_start_1
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 103
    .end local v0    # "value":[F
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDaltonizerMode()I
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget v1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getSurfaceFlinger()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mSurfaceFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 94
    const-string/jumbo v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mSurfaceFlinger:Landroid/os/IBinder;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mSurfaceFlinger:Landroid/os/IBinder;

    return-object v0
.end method

.method public setColorMatrix(I[F)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "value"    # [F

    .prologue
    .line 120
    if-eqz p2, :cond_0

    array-length v1, p2

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected length: 16 (4x4 matrix), actual length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 122
    array-length v3, p2

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v2

    .line 127
    if-nez p1, :cond_1

    .line 133
    :try_start_0
    invoke-static {p2}, Lcom/android/server/display/DisplayTransformManager;->applyColorMatrix([F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 134
    return-void

    .line 137
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 138
    .local v0, "oldValue":[F
    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_2

    .line 139
    if-nez p2, :cond_3

    .line 140
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 148
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayTransformManager;->computeColorMatrixLocked()[F

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/DisplayTransformManager;->applyColorMatrix([F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    .line 151
    return-void

    .line 141
    :cond_3
    if-nez v0, :cond_4

    .line 142
    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    array-length v3, p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 125
    .end local v0    # "oldValue":[F
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 144
    .restart local v0    # "oldValue":[F
    :cond_4
    :try_start_3
    array-length v1, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy([FI[FII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setColorMode(I)Z
    .locals 4
    .param p1, "colorMode"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 246
    if-nez p1, :cond_1

    .line 247
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    .line 248
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayTransformManager;->setNativeMode(Z)V

    .line 257
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTransformManager;->updateConfiguration()V

    .line 259
    return v2

    .line 249
    :cond_1
    if-ne p1, v2, :cond_2

    .line 250
    const v0, 0x3f8ccccd    # 1.1f

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    .line 251
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayTransformManager;->setNativeMode(Z)V

    goto :goto_0

    .line 252
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 253
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    .line 254
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayTransformManager;->setNativeMode(Z)V

    goto :goto_0
.end method

.method public setDaltonizerMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    iget v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    if-eq v0, p1, :cond_0

    .line 190
    iput p1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    .line 191
    invoke-static {p1}, Lcom/android/server/display/DisplayTransformManager;->applyDaltonizerMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 194
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method updateConfiguration()V
    .locals 3

    .prologue
    .line 302
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayTransformManager"

    const-string/jumbo v2, "Could not update configuration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
