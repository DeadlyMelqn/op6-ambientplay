.class public Landroid/graphics/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Shader$NoImagePreloadHolder;,
        Landroid/graphics/Shader$TileMode;
    }
.end annotation


# instance fields
.field private mCleaner:Ljava/lang/Runnable;

.field private mLocalMatrix:Landroid/graphics/Matrix;

.field private mNativeInstance:J


# direct methods
.method static synthetic -wrap0()J
    .locals 2

    invoke-static {}, Landroid/graphics/Shader;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeGetFinalizer()J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Landroid/graphics/Shader;

    invoke-direct {v0}, Landroid/graphics/Shader;-><init>()V

    .line 141
    .local v0, "copy":Landroid/graphics/Shader;
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 142
    return-object v0
.end method

.method protected copyLocalMatrix(Landroid/graphics/Shader;)V
    .locals 2
    .param p1, "dest"    # Landroid/graphics/Shader;

    .prologue
    .line 149
    iget-object v0, p1, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 150
    return-void
.end method

.method createNativeInstance(J)J
    .locals 2
    .param p1, "nativeMatrix"    # J

    .prologue
    .line 116
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected final discardNativeInstance()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 121
    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/graphics/Shader;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Shader;->mCleaner:Ljava/lang/Runnable;

    .line 124
    iput-wide v2, p0, Landroid/graphics/Shader;->mNativeInstance:J

    .line 126
    :cond_0
    return-void
.end method

.method public getLocalMatrix(Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "localM"    # Landroid/graphics/Matrix;

    .prologue
    .line 84
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 86
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNativeInstance()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 157
    invoke-virtual {p0}, Landroid/graphics/Shader;->verifyNativeInstance()V

    .line 159
    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    move-wide v0, v2

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Shader;->createNativeInstance(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    .line 162
    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Landroid/graphics/Shader$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 164
    iget-wide v2, p0, Landroid/graphics/Shader;->mNativeInstance:J

    .line 163
    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Shader;->mCleaner:Ljava/lang/Runnable;

    .line 167
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    return-wide v0

    .line 161
    :cond_1
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    iget-wide v0, v0, Landroid/graphics/Matrix;->native_instance:J

    goto :goto_0
.end method

.method public setLocalMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "localM"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 99
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    :cond_0
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 101
    iput-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 102
    invoke-virtual {p0}, Landroid/graphics/Shader;->discardNativeInstance()V

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_3

    .line 106
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 107
    invoke-virtual {p0}, Landroid/graphics/Shader;->discardNativeInstance()V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Shader;->discardNativeInstance()V

    goto :goto_0
.end method

.method protected verifyNativeInstance()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method
