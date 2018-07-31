.class final Landroid/app/FragmentManagerState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentManagerState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/FragmentManagerState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mActive:[Landroid/app/FragmentState;

.field mAdded:[I

.field mBackStack:[Landroid/app/BackStackState;

.field mNextFragmentIndex:I

.field mPrimaryNavActiveIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 607
    new-instance v0, Landroid/app/FragmentManagerState$1;

    invoke-direct {v0}, Landroid/app/FragmentManagerState$1;-><init>()V

    .line 606
    sput-object v0, Landroid/app/FragmentManagerState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 576
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 584
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 587
    sget-object v0, Landroid/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/FragmentState;

    iput-object v0, p0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentManagerState;->mAdded:[I

    .line 589
    sget-object v0, Landroid/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/BackStackState;

    iput-object v0, p0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/FragmentManagerState;->mNextFragmentIndex:I

    .line 592
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 599
    iget-object v0, p0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 600
    iget-object v0, p0, Landroid/app/FragmentManagerState;->mAdded:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 601
    iget-object v0, p0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 602
    iget v0, p0, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    iget v0, p0, Landroid/app/FragmentManagerState;->mNextFragmentIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    return-void
.end method