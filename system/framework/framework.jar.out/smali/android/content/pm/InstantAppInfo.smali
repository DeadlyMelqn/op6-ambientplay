.class public final Landroid/content/pm/InstantAppInfo;
.super Ljava/lang/Object;
.source "InstantAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/InstantAppInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mGrantedPermissions:[Ljava/lang/String;

.field private final mLabelText:Ljava/lang/CharSequence;

.field private final mPackageName:Ljava/lang/String;

.field private final mRequestedPermissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Landroid/content/pm/InstantAppInfo$1;

    invoke-direct {v0}, Landroid/content/pm/InstantAppInfo$1;-><init>()V

    .line 137
    sput-object v0, Landroid/content/pm/InstantAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "requestedPermissions"    # [Ljava/lang/String;
    .param p3, "grantedPermissions"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 46
    iput-object v0, p0, Landroid/content/pm/InstantAppInfo;->mPackageName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Landroid/content/pm/InstantAppInfo;->mLabelText:Ljava/lang/CharSequence;

    .line 48
    iput-object p2, p0, Landroid/content/pm/InstantAppInfo;->mRequestedPermissions:[Ljava/lang/String;

    .line 49
    iput-object p3, p0, Landroid/content/pm/InstantAppInfo;->mGrantedPermissions:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppInfo;->mPackageName:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppInfo;->mLabelText:Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppInfo;->mRequestedPermissions:[Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppInfo;->mGrantedPermissions:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/InstantAppInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/content/pm/InstantAppInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/InstantAppInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "requestedPermissions"    # [Ljava/lang/String;
    .param p4, "grantedPermissions"    # [Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 55
    iput-object p1, p0, Landroid/content/pm/InstantAppInfo;->mPackageName:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Landroid/content/pm/InstantAppInfo;->mLabelText:Ljava/lang/CharSequence;

    .line 57
    iput-object p3, p0, Landroid/content/pm/InstantAppInfo;->mRequestedPermissions:[Ljava/lang/String;

    .line 58
    iput-object p4, p0, Landroid/content/pm/InstantAppInfo;->mGrantedPermissions:[Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getGrantedPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mGrantedPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mRequestedPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 103
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstantAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 92
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mLabelText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 130
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mLabelText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mRequestedPermissions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mGrantedPermissions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 135
    return-void
.end method
