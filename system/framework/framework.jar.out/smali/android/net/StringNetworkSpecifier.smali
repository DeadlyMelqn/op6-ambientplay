.class public final Landroid/net/StringNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "StringNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/StringNetworkSpecifier$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/StringNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final specifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Landroid/net/StringNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/StringNetworkSpecifier$1;-><init>()V

    .line 70
    sput-object v0, Landroid/net/StringNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "specifier"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 36
    iput-object p1, p0, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 46
    instance-of v0, p1, Landroid/net/StringNetworkSpecifier;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 47
    :cond_0
    iget-object v0, p0, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    check-cast p1, Landroid/net/StringNetworkSpecifier;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public satisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .locals 1
    .param p1, "other"    # Landroid/net/NetworkSpecifier;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Landroid/net/StringNetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget-object v0, p0, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void
.end method
