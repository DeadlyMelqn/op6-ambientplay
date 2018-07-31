.class public final Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;
.super Ljava/lang/Object;
.source "EphemeralResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/EphemeralResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EphemeralDigest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mInstantAppDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest$1;

    invoke-direct {v0}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest$1;-><init>()V

    .line 212
    sput-object v0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 172
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mInstantAppDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostName"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;-><init>(Ljava/lang/String;I)V

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "maxDigests"    # I

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-direct {v0, p1, p2}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mInstantAppDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 182
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public getDigestBytes()[[B
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mInstantAppDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestBytes()[[B

    move-result-object v0

    return-object v0
.end method

.method public getDigestPrefix()[I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mInstantAppDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v0

    return-object v0
.end method

.method getInstantAppDigest()Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mInstantAppDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 208
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mInstantAppDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 209
    return-void
.end method
