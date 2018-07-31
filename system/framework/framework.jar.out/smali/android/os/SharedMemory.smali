.class public final Landroid/os/SharedMemory;
.super Ljava/lang/Object;
.source "SharedMemory.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SharedMemory$1;,
        Landroid/os/SharedMemory$Closer;,
        Landroid/os/SharedMemory$MemoryRegistration;,
        Landroid/os/SharedMemory$Unmapper;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/SharedMemory;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROT_MASK:I


# instance fields
.field private mCleaner:Lsun/misc/Cleaner;

.field private final mFileDescriptor:Ljava/io/FileDescriptor;

.field private final mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

.field private final mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v0, v1

    .line 95
    sget v1, Landroid/system/OsConstants;->PROT_EXEC:I

    .line 94
    or-int/2addr v0, v1

    .line 95
    sget v1, Landroid/system/OsConstants;->PROT_NONE:I

    .line 94
    or-int/2addr v0, v1

    sput v0, Landroid/os/SharedMemory;->PROT_MASK:I

    .line 274
    new-instance v0, Landroid/os/SharedMemory$1;

    invoke-direct {v0}, Landroid/os/SharedMemory$1;-><init>()V

    .line 273
    sput-object v0, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 50
    const-string/jumbo v1, "Unable to create SharedMemory from a null FileDescriptor"

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 54
    const-string/jumbo v1, "Unable to create SharedMemory from closed FileDescriptor"

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iput-object p1, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 57
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/os/SharedMemory;->nGetSize(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Landroid/os/SharedMemory;->mSize:I

    .line 58
    iget v0, p0, Landroid/os/SharedMemory;->mSize:I

    if-gtz v0, :cond_2

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "FileDescriptor is not a valid ashmem fd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    new-instance v0, Landroid/os/SharedMemory$MemoryRegistration;

    iget v1, p0, Landroid/os/SharedMemory;->mSize:I

    invoke-direct {v0, v1, v4}, Landroid/os/SharedMemory$MemoryRegistration;-><init>(ILandroid/os/SharedMemory$MemoryRegistration;)V

    iput-object v0, p0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    .line 63
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 64
    new-instance v1, Landroid/os/SharedMemory$Closer;

    iget-object v2, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-object v3, p0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-direct {v1, v2, v3, v4}, Landroid/os/SharedMemory$Closer;-><init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory$Closer;)V

    .line 63
    invoke-static {v0, v1}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "-this1"    # Landroid/os/SharedMemory;

    .prologue
    invoke-direct {p0, p1}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private checkOpen()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SharedMemory is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    return-void
.end method

.method public static create(Ljava/lang/String;I)Landroid/os/SharedMemory;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 82
    if-gtz p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Size must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    new-instance v0, Landroid/os/SharedMemory;

    invoke-static {p0, p1}, Landroid/os/SharedMemory;->nCreate(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method private static native nCreate(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method private static native nGetSize(Ljava/io/FileDescriptor;)I
.end method

.method private static native nSetProt(Ljava/io/FileDescriptor;I)I
.end method

.method public static unmap(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 240
    instance-of v0, p0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_0

    .line 241
    invoke-static {p0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 246
    return-void

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 244
    const-string/jumbo v1, "ByteBuffer wasn\'t created by #map(int, int, int); can\'t unmap"

    .line 243
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateProt(I)V
    .locals 2
    .param p0, "prot"    # I

    .prologue
    .line 98
    sget v0, Landroid/os/SharedMemory;->PROT_MASK:I

    not-int v0, v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid prot value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 258
    iput-object v1, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    .line 260
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public getFd()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    return v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 168
    iget v0, p0, Landroid/os/SharedMemory;->mSize:I

    return v0
.end method

.method public map(III)Ljava/nio/ByteBuffer;
    .locals 11
    .param p1, "prot"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 215
    invoke-static {p1}, Landroid/os/SharedMemory;->validateProt(I)V

    .line 216
    if-gez p2, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Offset must be >= 0"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    if-gtz p3, :cond_1

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Length must be > 0"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_1
    add-int v0, p2, p3

    iget v4, p0, Landroid/os/SharedMemory;->mSize:I

    if-le v0, v4, :cond_2

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "offset + length must not exceed getSize()"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_2
    const-wide/16 v0, 0x0

    int-to-long v2, p3

    sget v5, Landroid/system/OsConstants;->MAP_SHARED:I

    iget-object v6, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    int-to-long v7, p2

    move v4, p1

    invoke-static/range {v0 .. v8}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v2

    .line 226
    .local v2, "address":J
    sget v0, Landroid/system/OsConstants;->PROT_WRITE:I

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    const/4 v10, 0x1

    .line 227
    .local v10, "readOnly":Z
    :goto_0
    new-instance v1, Landroid/os/SharedMemory$Unmapper;

    iget-object v0, p0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-virtual {v0}, Landroid/os/SharedMemory$MemoryRegistration;->acquire()Landroid/os/SharedMemory$MemoryRegistration;

    move-result-object v5

    const/4 v6, 0x0

    move v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/os/SharedMemory$Unmapper;-><init>(JILandroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory$Unmapper;)V

    .line 228
    .local v1, "unmapper":Ljava/lang/Runnable;
    new-instance v4, Ljava/nio/DirectByteBuffer;

    iget-object v8, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    move v5, p3

    move-wide v6, v2

    move-object v9, v1

    invoke-direct/range {v4 .. v10}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V

    return-object v4

    .line 226
    .end local v1    # "unmapper":Ljava/lang/Runnable;
    .end local v10    # "readOnly":Z
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "readOnly":Z
    goto :goto_0
.end method

.method public mapReadOnly()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 196
    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    iget v1, p0, Landroid/os/SharedMemory;->mSize:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/os/SharedMemory;->map(III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public mapReadWrite()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 182
    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/os/SharedMemory;->mSize:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/os/SharedMemory;->map(III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public setProtect(I)Z
    .locals 3
    .param p1, "prot"    # I

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 130
    invoke-static {p1}, Landroid/os/SharedMemory;->validateProt(I)V

    .line 131
    iget-object v2, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v2, p1}, Landroid/os/SharedMemory;->nSetProt(Ljava/io/FileDescriptor;I)I

    move-result v0

    .line 132
    .local v0, "errno":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 269
    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 270
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 271
    return-void
.end method
