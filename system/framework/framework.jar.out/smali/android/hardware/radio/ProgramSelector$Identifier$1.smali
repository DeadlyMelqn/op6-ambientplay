.class final Landroid/hardware/radio/ProgramSelector$Identifier$1;
.super Ljava/lang/Object;
.source "ProgramSelector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ProgramSelector$Identifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/radio/ProgramSelector$Identifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 494
    new-instance v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ProgramSelector$Identifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 498
    new-array v0, p1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ProgramSelector$Identifier$1;->newArray(I)[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    return-object v0
.end method