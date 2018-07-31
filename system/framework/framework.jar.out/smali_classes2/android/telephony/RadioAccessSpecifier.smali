.class public final Landroid/telephony/RadioAccessSpecifier;
.super Ljava/lang/Object;
.source "RadioAccessSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/RadioAccessSpecifier$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bands:[I

.field public channels:[I

.field public radioAccessNetwork:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Landroid/telephony/RadioAccessSpecifier$1;

    invoke-direct {v0}, Landroid/telephony/RadioAccessSpecifier$1;-><init>()V

    .line 73
    sput-object v0, Landroid/telephony/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method public constructor <init>(I[I[I)V
    .locals 0
    .param p1, "ran"    # I
    .param p2, "bands"    # [I
    .param p3, "channels"    # [I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Landroid/telephony/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 69
    iput-object p2, p0, Landroid/telephony/RadioAccessSpecifier;->bands:[I

    .line 70
    iput-object p3, p0, Landroid/telephony/RadioAccessSpecifier;->channels:[I

    .line 71
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->bands:[I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->channels:[I

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/RadioAccessSpecifier;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/telephony/RadioAccessSpecifier;

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/RadioAccessSpecifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 109
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/RadioAccessSpecifier;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .local v2, "ras":Landroid/telephony/RadioAccessSpecifier;
    if-nez p1, :cond_0

    .line 115
    return v3

    .line 110
    .end local v2    # "ras":Landroid/telephony/RadioAccessSpecifier;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    .line 118
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "ras":Landroid/telephony/RadioAccessSpecifier;
    :cond_0
    iget v4, p0, Landroid/telephony/RadioAccessSpecifier;->radioAccessNetwork:I

    iget v5, v2, Landroid/telephony/RadioAccessSpecifier;->radioAccessNetwork:I

    if-ne v4, v5, :cond_1

    .line 119
    iget-object v4, p0, Landroid/telephony/RadioAccessSpecifier;->bands:[I

    iget-object v5, v2, Landroid/telephony/RadioAccessSpecifier;->bands:[I

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    .line 118
    if-eqz v4, :cond_1

    .line 120
    iget-object v3, p0, Landroid/telephony/RadioAccessSpecifier;->channels:[I

    iget-object v4, v2, Landroid/telephony/RadioAccessSpecifier;->channels:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    .line 118
    :cond_1
    return v3
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Landroid/telephony/RadioAccessSpecifier;->radioAccessNetwork:I

    mul-int/lit8 v0, v0, 0x1f

    .line 126
    iget-object v1, p0, Landroid/telephony/RadioAccessSpecifier;->bands:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    .line 125
    add-int/2addr v0, v1

    .line 127
    iget-object v1, p0, Landroid/telephony/RadioAccessSpecifier;->channels:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x27

    .line 125
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 93
    iget v0, p0, Landroid/telephony/RadioAccessSpecifier;->radioAccessNetwork:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->bands:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 95
    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->channels:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 96
    return-void
.end method
