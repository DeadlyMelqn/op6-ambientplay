.class public Landroid/util/GlobalPermissionState$PermissionState;
.super Ljava/lang/Object;
.source "GlobalPermissionState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/GlobalPermissionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/GlobalPermissionState$PermissionState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/util/GlobalPermissionState$PermissionState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isGranted:Z

.field public isUserFixed:Z

.field public mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Landroid/util/GlobalPermissionState$PermissionState$1;

    invoke-direct {v0}, Landroid/util/GlobalPermissionState$PermissionState$1;-><init>()V

    sput-object v0, Landroid/util/GlobalPermissionState$PermissionState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-boolean v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    .line 107
    iput-boolean v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    .line 110
    invoke-virtual {p0, p1}, Landroid/util/GlobalPermissionState$PermissionState;->readFromParcel(Landroid/os/Parcel;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/util/GlobalPermissionState$PermissionState;)V
    .locals 1
    .param p1, "s"    # Landroid/util/GlobalPermissionState$PermissionState;

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-boolean v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    .line 107
    iput-boolean v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    .line 118
    iget-object v0, p1, Landroid/util/GlobalPermissionState$PermissionState;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 119
    iget-boolean v0, p1, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    iput-boolean v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    .line 120
    iget-boolean v0, p1, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    iput-boolean v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-boolean v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    .line 107
    iput-boolean v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    .line 114
    iput-object p1, p0, Landroid/util/GlobalPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public isCustomPermission()Z
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->mName:Ljava/lang/String;

    const-string/jumbo v1, "CUSTOM_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    .line 147
    return-void

    :cond_0
    move v0, v2

    .line 145
    goto :goto_0

    :cond_1
    move v1, v2

    .line 146
    goto :goto_1
.end method

.method public set(Landroid/util/GlobalPermissionState$PermissionState;)V
    .locals 1
    .param p1, "s"    # Landroid/util/GlobalPermissionState$PermissionState;

    .prologue
    .line 124
    iget-object v0, p1, Landroid/util/GlobalPermissionState$PermissionState;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 125
    iget-boolean v0, p1, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    iput-boolean v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    .line 126
    iget-boolean v0, p1, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    iput-boolean v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    .line 127
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-boolean v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-boolean v0, p0, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    return-void

    :cond_0
    move v0, v2

    .line 139
    goto :goto_0

    :cond_1
    move v1, v2

    .line 140
    goto :goto_1
.end method
