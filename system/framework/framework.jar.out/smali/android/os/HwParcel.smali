.class public Landroid/os/HwParcel;
.super Ljava/lang/Object;
.source "HwParcel.java"


# static fields
.field public static final STATUS_ERROR:I = -0x1

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HwParcel"

.field private static final sNativeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 233
    invoke-static {}, Landroid/os/HwParcel;->native_init()J

    move-result-wide v2

    .line 235
    .local v2, "freeFunction":J
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    .line 236
    const-class v1, Landroid/os/HwParcel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 238
    const-wide/16 v4, 0x80

    .line 235
    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Landroid/os/HwParcel;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/HwParcel;->native_setup(Z)V

    .line 44
    sget-object v0, Landroid/os/HwParcel;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 46
    iget-wide v2, p0, Landroid/os/HwParcel;->mNativeContext:J

    .line 44
    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 47
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4
    .param p1, "allocate"    # Z

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1}, Landroid/os/HwParcel;->native_setup(Z)V

    .line 36
    sget-object v0, Landroid/os/HwParcel;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 38
    iget-wide v2, p0, Landroid/os/HwParcel;->mNativeContext:J

    .line 36
    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 39
    return-void
.end method

.method private static final native native_init()J
.end method

.method private final native native_setup(Z)V
.end method

.method private final native readBoolVectorAsArray()[Z
.end method

.method private final native readDoubleVectorAsArray()[D
.end method

.method private final native readFloatVectorAsArray()[F
.end method

.method private final native readInt16VectorAsArray()[S
.end method

.method private final native readInt32VectorAsArray()[I
.end method

.method private final native readInt64VectorAsArray()[J
.end method

.method private final native readInt8VectorAsArray()[B
.end method

.method private final native readStringVectorAsArray()[Ljava/lang/String;
.end method

.method private final native writeBoolVector([Z)V
.end method

.method private final native writeDoubleVector([D)V
.end method

.method private final native writeFloatVector([F)V
.end method

.method private final native writeInt16Vector([S)V
.end method

.method private final native writeInt32Vector([I)V
.end method

.method private final native writeInt64Vector([J)V
.end method

.method private final native writeInt8Vector([B)V
.end method

.method private final native writeStringVector([Ljava/lang/String;)V
.end method


# virtual methods
.method public final native enforceInterface(Ljava/lang/String;)V
.end method

.method public final native readBool()Z
.end method

.method public final readBoolVector()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Landroid/os/HwParcel;->readBoolVectorAsArray()[Z

    move-result-object v1

    invoke-static {v1}, Landroid/os/HwBlob;->wrapArray([Z)[Ljava/lang/Boolean;

    move-result-object v0

    .line 166
    .local v0, "array":[Ljava/lang/Boolean;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native readBuffer(J)Landroid/os/HwBlob;
.end method

.method public final native readDouble()D
.end method

.method public final readDoubleVector()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/os/HwParcel;->readDoubleVectorAsArray()[D

    move-result-object v1

    invoke-static {v1}, Landroid/os/HwBlob;->wrapArray([D)[Ljava/lang/Double;

    move-result-object v0

    .line 202
    .local v0, "array":[Ljava/lang/Double;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;
.end method

.method public final native readFloat()F
.end method

.method public final readFloatVector()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/os/HwParcel;->readFloatVectorAsArray()[F

    move-result-object v1

    invoke-static {v1}, Landroid/os/HwBlob;->wrapArray([F)[Ljava/lang/Float;

    move-result-object v0

    .line 196
    .local v0, "array":[Ljava/lang/Float;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native readInt16()S
.end method

.method public final readInt16Vector()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Landroid/os/HwParcel;->readInt16VectorAsArray()[S

    move-result-object v1

    invoke-static {v1}, Landroid/os/HwBlob;->wrapArray([S)[Ljava/lang/Short;

    move-result-object v0

    .line 178
    .local v0, "array":[Ljava/lang/Short;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native readInt32()I
.end method

.method public final readInt32Vector()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Landroid/os/HwParcel;->readInt32VectorAsArray()[I

    move-result-object v1

    invoke-static {v1}, Landroid/os/HwBlob;->wrapArray([I)[Ljava/lang/Integer;

    move-result-object v0

    .line 184
    .local v0, "array":[Ljava/lang/Integer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native readInt64()J
.end method

.method public final readInt64Vector()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/os/HwParcel;->readInt64VectorAsArray()[J

    move-result-object v1

    invoke-static {v1}, Landroid/os/HwBlob;->wrapArray([J)[Ljava/lang/Long;

    move-result-object v0

    .line 190
    .local v0, "array":[Ljava/lang/Long;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native readInt8()B
.end method

.method public final readInt8Vector()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/os/HwParcel;->readInt8VectorAsArray()[B

    move-result-object v1

    invoke-static {v1}, Landroid/os/HwBlob;->wrapArray([B)[Ljava/lang/Byte;

    move-result-object v0

    .line 172
    .local v0, "array":[Ljava/lang/Byte;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native readString()Ljava/lang/String;
.end method

.method public final readStringVector()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/HwParcel;->readStringVectorAsArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final native readStrongBinder()Landroid/os/IHwBinder;
.end method

.method public final native release()V
.end method

.method public final native releaseTemporaryStorage()V
.end method

.method public final native send()V
.end method

.method public final native verifySuccess()V
.end method

.method public final native writeBool(Z)V
.end method

.method public final writeBoolVector(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 70
    .local v2, "n":I
    new-array v0, v2, [Z

    .line 71
    .local v0, "array":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 72
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0, v0}, Landroid/os/HwParcel;->writeBoolVector([Z)V

    .line 76
    return-void
.end method

.method public final native writeBuffer(Landroid/os/HwBlob;)V
.end method

.method public final native writeDouble(D)V
.end method

.method public final writeDoubleVector(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 130
    .local v2, "n":I
    new-array v0, v2, [D

    .line 131
    .local v0, "array":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 132
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-direct {p0, v0}, Landroid/os/HwParcel;->writeDoubleVector([D)V

    .line 136
    return-void
.end method

.method public final native writeFloat(F)V
.end method

.method public final writeFloatVector(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 120
    .local v2, "n":I
    new-array v0, v2, [F

    .line 121
    .local v0, "array":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 122
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v0, v1

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-direct {p0, v0}, Landroid/os/HwParcel;->writeFloatVector([F)V

    .line 126
    return-void
.end method

.method public final native writeInt16(S)V
.end method

.method public final writeInt16Vector(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 90
    .local v2, "n":I
    new-array v0, v2, [S

    .line 91
    .local v0, "array":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 92
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    aput-short v3, v0, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-direct {p0, v0}, Landroid/os/HwParcel;->writeInt16Vector([S)V

    .line 96
    return-void
.end method

.method public final native writeInt32(I)V
.end method

.method public final writeInt32Vector(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 100
    .local v2, "n":I
    new-array v0, v2, [I

    .line 101
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 102
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    invoke-direct {p0, v0}, Landroid/os/HwParcel;->writeInt32Vector([I)V

    .line 106
    return-void
.end method

.method public final native writeInt64(J)V
.end method

.method public final writeInt64Vector(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 110
    .local v2, "n":I
    new-array v0, v2, [J

    .line 111
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 112
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-direct {p0, v0}, Landroid/os/HwParcel;->writeInt64Vector([J)V

    .line 116
    return-void
.end method

.method public final native writeInt8(B)V
.end method

.method public final writeInt8Vector(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 80
    .local v2, "n":I
    new-array v0, v2, [B

    .line 81
    .local v0, "array":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 82
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-direct {p0, v0}, Landroid/os/HwParcel;->writeInt8Vector([B)V

    .line 86
    return-void
.end method

.method public final native writeInterfaceToken(Ljava/lang/String;)V
.end method

.method public final native writeStatus(I)V
.end method

.method public final native writeString(Ljava/lang/String;)V
.end method

.method public final writeStringVector(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/os/HwParcel;->writeStringVector([Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public final native writeStrongBinder(Landroid/os/IHwBinder;)V
.end method
