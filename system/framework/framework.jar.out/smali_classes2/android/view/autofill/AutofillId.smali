.class public final Landroid/view/autofill/AutofillId;
.super Ljava/lang/Object;
.source "AutofillId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillId$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mViewId:I

.field private final mVirtual:Z

.field private final mVirtualId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Landroid/view/autofill/AutofillId$1;

    invoke-direct {v0}, Landroid/view/autofill/AutofillId$1;-><init>()V

    .line 120
    sput-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    .line 36
    iput p1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    .line 38
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "parentId"    # I
    .param p2, "virtualChildId"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    .line 50
    iput p1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    .line 51
    iput p2, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    .line 118
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/autofill/AutofillId;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/view/autofill/AutofillId;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/autofill/AutofillId;I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualChildId"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    .line 43
    iget v0, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    iput v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    .line 44
    iput p2, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    if-ne p0, p1, :cond_0

    return v4

    .line 85
    :cond_0
    if-nez p1, :cond_1

    return v3

    .line 86
    :cond_1
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    .line 87
    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 88
    .local v0, "other":Landroid/view/autofill/AutofillId;
    iget v1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    iget v2, v0, Landroid/view/autofill/AutofillId;->mViewId:I

    if-eq v1, v2, :cond_3

    return v3

    .line 89
    :cond_3
    iget v1, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    iget v2, v0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    if-eq v1, v2, :cond_4

    return v3

    .line 90
    :cond_4
    return v4
.end method

.method public getViewId()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    return v0
.end method

.method public getVirtualChildId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 75
    const/16 v0, 0x1f

    .line 76
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 77
    .local v1, "result":I
    iget v2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    add-int/lit8 v1, v2, 0x1f

    .line 78
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    add-int v1, v2, v3

    .line 79
    return v1
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    if-eqz v1, :cond_0

    .line 97
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 109
    iget v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
