.class public Landroid/net/lowpan/LowpanIdentity;
.super Ljava/lang/Object;
.source "LowpanIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanIdentity$1;,
        Landroid/net/lowpan/LowpanIdentity$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/lowpan/LowpanIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final UNSPECIFIED_CHANNEL:I = -0x1

.field public static final UNSPECIFIED_PANID:I = -0x1


# instance fields
.field private mChannel:I

.field private mIsNameValid:Z

.field private mName:Ljava/lang/String;

.field private mPanid:I

.field private mRawName:[B

.field private mType:Ljava/lang/String;

.field private mXpanid:[B


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/lowpan/LowpanIdentity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/lowpan/LowpanIdentity;)Z
    .locals 1
    .param p0, "-this"    # Landroid/net/lowpan/LowpanIdentity;

    .prologue
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    return v0
.end method

.method static synthetic -get2(Landroid/net/lowpan/LowpanIdentity;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Landroid/net/lowpan/LowpanIdentity;

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/lowpan/LowpanIdentity;I)I
    .locals 0
    .param p0, "-this"    # Landroid/net/lowpan/LowpanIdentity;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    return p1
.end method

.method static synthetic -set1(Landroid/net/lowpan/LowpanIdentity;Z)Z
    .locals 0
    .param p0, "-this"    # Landroid/net/lowpan/LowpanIdentity;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    return p1
.end method

.method static synthetic -set2(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Landroid/net/lowpan/LowpanIdentity;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/lowpan/LowpanIdentity;I)I
    .locals 0
    .param p0, "-this"    # Landroid/net/lowpan/LowpanIdentity;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    return p1
.end method

.method static synthetic -set4(Landroid/net/lowpan/LowpanIdentity;[B)[B
    .locals 0
    .param p0, "-this"    # Landroid/net/lowpan/LowpanIdentity;
    .param p1, "-value"    # [B

    .prologue
    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    return-object p1
.end method

.method static synthetic -set5(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Landroid/net/lowpan/LowpanIdentity;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Landroid/net/lowpan/LowpanIdentity;[B)[B
    .locals 0
    .param p0, "-this"    # Landroid/net/lowpan/LowpanIdentity;
    .param p1, "-value"    # [B

    .prologue
    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/lowpan/LowpanIdentity;->TAG:Ljava/lang/String;

    .line 237
    new-instance v0, Landroid/net/lowpan/LowpanIdentity$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanIdentity$1;-><init>()V

    .line 236
    sput-object v0, Landroid/net/lowpan/LowpanIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    .line 139
    new-array v0, v2, [B

    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    .line 140
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    .line 141
    new-array v0, v2, [B

    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    .line 142
    iput v1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    .line 143
    iput v1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    .line 133
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 202
    instance-of v2, p1, Landroid/net/lowpan/LowpanIdentity;

    if-nez v2, :cond_0

    .line 203
    return v1

    :cond_0
    move-object v0, p1

    .line 205
    check-cast v0, Landroid/net/lowpan/LowpanIdentity;

    .line 206
    .local v0, "rhs":Landroid/net/lowpan/LowpanIdentity;
    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    iget-object v3, v0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    iget-object v3, v0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 206
    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 206
    if-eqz v2, :cond_1

    .line 209
    iget v2, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    iget v3, v0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    if-ne v2, v3, :cond_1

    .line 210
    iget v2, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    iget v3, v0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 206
    :cond_1
    return v1
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPanid()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    return v0
.end method

.method public getRawName()[B
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getXpanid()[B
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 215
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 216
    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 215
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNameValid()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/lowpan/LowpanIdentity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 182
    const-string/jumbo v1, ", Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    :cond_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    array-length v1, v1

    if-lez v1, :cond_1

    .line 186
    const-string/jumbo v1, ", XPANID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    :cond_1
    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    if-eq v1, v6, :cond_2

    .line 190
    const-string/jumbo v1, ", PANID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "0x%04X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    :cond_2
    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    if-eq v1, v6, :cond_3

    .line 194
    const-string/jumbo v1, ", Channel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 197
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 228
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 229
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 231
    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    return-void
.end method
