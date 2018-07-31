.class Lcom/android/server/accessibility/DisplayAdjustmentUtils;
.super Ljava/lang/Object;
.source "DisplayAdjustmentUtils.java"


# static fields
.field private static final DEFAULT_DISPLAY_DALTONIZER:I = 0xc

.field private static final MATRIX_GRAYSCALE:[F

.field private static final MATRIX_INVERT_COLOR:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 38
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_GRAYSCALE:[F

    .line 52
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_INVERT_COLOR:[F

    .line 31
    return-void

    .line 38
    nop

    :array_0
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 52
    :array_1
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDaltonizerSetting(Landroid/content/Context;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    .local v0, "cr":Landroid/content/ContentResolver;
    const-class v6, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayTransformManager;

    .line 63
    .local v2, "dtm":Lcom/android/server/display/DisplayTransformManager;
    const/4 v1, -0x1

    .line 64
    .local v1, "daltonizerMode":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 67
    .local v4, "identity":J
    :try_start_0
    const-string/jumbo v6, "accessibility_display_daltonizer_enabled"

    const/4 v7, 0x0

    .line 66
    invoke-static {v0, v6, v7, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_0

    .line 69
    const-string/jumbo v6, "accessibility_display_daltonizer"

    const/16 v7, 0xc

    .line 68
    invoke-static {v0, v6, v7, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 72
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, "grayscaleMatrix":[F
    if-nez v1, :cond_1

    .line 78
    sget-object v3, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_GRAYSCALE:[F

    .line 79
    .local v3, "grayscaleMatrix":[F
    const/4 v1, -0x1

    .line 81
    .end local v3    # "grayscaleMatrix":[F
    :cond_1
    const/16 v6, 0xc8

    invoke-virtual {v2, v6, v3}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 82
    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayTransformManager;->setDaltonizerMode(I)V

    .line 83
    return-void

    .line 71
    :catchall_0
    move-exception v6

    .line 72
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    throw v6
.end method

.method public static applyInversionSetting(Landroid/content/Context;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, "cr":Landroid/content/ContentResolver;
    const-class v5, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayTransformManager;

    .line 92
    .local v1, "dtm":Lcom/android/server/display/DisplayTransformManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 95
    .local v2, "identity":J
    :try_start_0
    const-string/jumbo v5, "accessibility_display_inversion_enabled"

    const/4 v6, 0x0

    .line 94
    invoke-static {v0, v5, v6, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 97
    .local v4, "invertColors":Z
    :goto_0
    if-eqz v4, :cond_1

    sget-object v5, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_INVERT_COLOR:[F

    .line 96
    :goto_1
    const/16 v6, 0x12c

    invoke-virtual {v1, v6, v5}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    return-void

    .line 94
    .end local v4    # "invertColors":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "invertColors":Z
    goto :goto_0

    .line 97
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 98
    .end local v4    # "invertColors":Z
    :catchall_0
    move-exception v5

    .line 99
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    throw v5
.end method
