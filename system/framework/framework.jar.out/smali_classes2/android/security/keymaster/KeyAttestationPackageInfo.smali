.class public Landroid/security/keymaster/KeyAttestationPackageInfo;
.super Ljava/lang/Object;
.source "KeyAttestationPackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keymaster/KeyAttestationPackageInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/security/keymaster/KeyAttestationPackageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mPackageSignatures:[Landroid/content/pm/Signature;

.field private final mPackageVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Landroid/security/keymaster/KeyAttestationPackageInfo$1;

    invoke-direct {v0}, Landroid/security/keymaster/KeyAttestationPackageInfo$1;-><init>()V

    .line 77
    sput-object v0, Landroid/security/keymaster/KeyAttestationPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageName:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageVersionCode:I

    .line 93
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageSignatures:[Landroid/content/pm/Signature;

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/security/keymaster/KeyAttestationPackageInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/security/keymaster/KeyAttestationPackageInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeyAttestationPackageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Landroid/content/pm/Signature;)V
    .locals 0
    .param p1, "mPackageName"    # Ljava/lang/String;
    .param p2, "mPackageVersionCode"    # I
    .param p3, "mPackageSignatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageName:Ljava/lang/String;

    .line 43
    iput p2, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageVersionCode:I

    .line 44
    iput-object p3, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageSignatures:[Landroid/content/pm/Signature;

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageSignatures()[Landroid/content/pm/Signature;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageSignatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public getPackageVersionCode()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 72
    iget-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 75
    return-void
.end method
