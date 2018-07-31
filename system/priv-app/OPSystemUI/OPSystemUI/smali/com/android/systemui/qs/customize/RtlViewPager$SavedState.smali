.class public Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;
.super Ljava/lang/Object;
.source "RtlViewPager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/RtlViewPager$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLayoutDirection:I

.field private final mViewPagerSavedState:Landroid/os/Parcelable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mLayoutDirection:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mViewPagerSavedState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState$1;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState$1;-><init>()V

    invoke-static {v0}, Landroid/support/v4/os/ParcelableCompat;->newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 120
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    if-nez p2, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 133
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mViewPagerSavedState:Landroid/os/Parcelable;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mLayoutDirection:I

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "-this2"    # Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0
    .param p1, "viewPagerSavedState"    # Landroid/os/Parcelable;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mViewPagerSavedState:Landroid/os/Parcelable;

    .line 126
    iput p2, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mLayoutDirection:I

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;ILcom/android/systemui/qs/customize/RtlViewPager$SavedState;)V
    .locals 0
    .param p1, "viewPagerSavedState"    # Landroid/os/Parcelable;
    .param p2, "layoutDirection"    # I
    .param p3, "-this2"    # Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mViewPagerSavedState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 145
    iget v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mLayoutDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    return-void
.end method
