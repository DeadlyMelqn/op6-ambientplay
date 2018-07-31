.class final Landroid/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BackStackState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

.field final mReorderingAllowed:Z

.field final mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Landroid/app/BackStackState$1;

    invoke-direct {v0}, Landroid/app/BackStackState$1;-><init>()V

    .line 158
    sput-object v0, Landroid/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V
    .locals 7
    .param p1, "fm"    # Landroid/app/FragmentManagerImpl;
    .param p2, "bse"    # Landroid/app/BackStackRecord;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v5, p2, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 50
    .local v0, "numOps":I
    mul-int/lit8 v5, v0, 0x6

    new-array v5, v5, [I

    iput-object v5, p0, Landroid/app/BackStackState;->mOps:[I

    .line 52
    iget-boolean v5, p2, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v5, :cond_0

    .line 53
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Not on back stack"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 56
    :cond_0
    const/4 v3, 0x0

    .line 57
    .local v3, "pos":I
    const/4 v2, 0x0

    .local v2, "opNum":I
    move v4, v3

    .end local v3    # "pos":I
    .local v4, "pos":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 58
    iget-object v5, p2, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord$Op;

    .line 59
    .local v1, "op":Landroid/app/BackStackRecord$Op;
    iget-object v5, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    iget v6, v1, Landroid/app/BackStackRecord$Op;->cmd:I

    aput v6, v5, v4

    .line 60
    iget-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    iget-object v5, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v5, :cond_1

    iget-object v5, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v5, v5, Landroid/app/Fragment;->mIndex:I

    :goto_1
    aput v5, v6, v3

    .line 61
    iget-object v5, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    iget v6, v1, Landroid/app/BackStackRecord$Op;->enterAnim:I

    aput v6, v5, v4

    .line 62
    iget-object v5, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    iget v6, v1, Landroid/app/BackStackRecord$Op;->exitAnim:I

    aput v6, v5, v3

    .line 63
    iget-object v5, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    iget v6, v1, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    aput v6, v5, v4

    .line 64
    iget-object v5, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    iget v6, v1, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    aput v6, v5, v3

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_1
    const/4 v5, -0x1

    goto :goto_1

    .line 66
    .end local v1    # "op":Landroid/app/BackStackRecord$Op;
    :cond_2
    iget v5, p2, Landroid/app/BackStackRecord;->mTransition:I

    iput v5, p0, Landroid/app/BackStackState;->mTransition:I

    .line 67
    iget v5, p2, Landroid/app/BackStackRecord;->mTransitionStyle:I

    iput v5, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    .line 68
    iget-object v5, p2, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object v5, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    .line 69
    iget v5, p2, Landroid/app/BackStackRecord;->mIndex:I

    iput v5, p0, Landroid/app/BackStackState;->mIndex:I

    .line 70
    iget v5, p2, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput v5, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 71
    iget-object v5, p2, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 72
    iget v5, p2, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v5, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 73
    iget-object v5, p2, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 74
    iget-object v5, p2, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v5, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 75
    iget-object v5, p2, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v5, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 76
    iget-boolean v5, p2, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    iput-boolean v5, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mOps:[I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mTransition:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mIndex:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 86
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 88
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    .line 92
    return-void

    :cond_0
    move v0, v1

    .line 91
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;
    .locals 11
    .param p1, "fm"    # Landroid/app/FragmentManagerImpl;

    .prologue
    const/4 v10, 0x1

    .line 95
    new-instance v0, Landroid/app/BackStackRecord;

    invoke-direct {v0, p1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    .line 96
    .local v0, "bse":Landroid/app/BackStackRecord;
    const/4 v5, 0x0

    .line 97
    .local v5, "pos":I
    const/4 v3, 0x0

    .line 98
    .local v3, "num":I
    :goto_0
    iget-object v7, p0, Landroid/app/BackStackState;->mOps:[I

    array-length v7, v7

    if-ge v5, v7, :cond_2

    .line 99
    new-instance v4, Landroid/app/BackStackRecord$Op;

    invoke-direct {v4}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 100
    .local v4, "op":Landroid/app/BackStackRecord$Op;
    iget-object v7, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    aget v7, v7, v5

    iput v7, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 101
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 102
    const-string/jumbo v7, "FragmentManager"

    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Instantiate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " op #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " base fragment #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/app/BackStackState;->mOps:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 102
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget-object v7, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    aget v2, v7, v6

    .line 106
    .local v2, "findex":I
    if-ltz v2, :cond_1

    .line 107
    iget-object v7, p1, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 108
    .local v1, "f":Landroid/app/Fragment;
    iput-object v1, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 112
    .end local v1    # "f":Landroid/app/Fragment;
    :goto_1
    iget-object v7, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    aget v7, v7, v5

    iput v7, v4, Landroid/app/BackStackRecord$Op;->enterAnim:I

    .line 113
    iget-object v7, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    aget v7, v7, v6

    iput v7, v4, Landroid/app/BackStackRecord$Op;->exitAnim:I

    .line 114
    iget-object v7, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    aget v7, v7, v5

    iput v7, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    .line 115
    iget-object v7, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    aget v7, v7, v6

    iput v7, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    .line 116
    iget v7, v4, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v7, v0, Landroid/app/BackStackRecord;->mEnterAnim:I

    .line 117
    iget v7, v4, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v7, v0, Landroid/app/BackStackRecord;->mExitAnim:I

    .line 118
    iget v7, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v7, v0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    .line 119
    iget v7, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v7, v0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    .line 120
    invoke-virtual {v0, v4}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 110
    :cond_1
    const/4 v7, 0x0

    iput-object v7, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    goto :goto_1

    .line 123
    .end local v2    # "findex":I
    .end local v4    # "op":Landroid/app/BackStackRecord$Op;
    :cond_2
    iget v7, p0, Landroid/app/BackStackState;->mTransition:I

    iput v7, v0, Landroid/app/BackStackRecord;->mTransition:I

    .line 124
    iget v7, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    iput v7, v0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    .line 125
    iget-object v7, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    iput-object v7, v0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 126
    iget v7, p0, Landroid/app/BackStackState;->mIndex:I

    iput v7, v0, Landroid/app/BackStackRecord;->mIndex:I

    .line 127
    iput-boolean v10, v0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    .line 128
    iget v7, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v7, v0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 129
    iget-object v7, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v7, v0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 130
    iget v7, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v7, v0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 131
    iget-object v7, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v7, v0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 132
    iget-object v7, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v7, v0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 133
    iget-object v7, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v7, v0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 134
    iget-boolean v7, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    iput-boolean v7, v0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    .line 135
    invoke-virtual {v0, v10}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 136
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Landroid/app/BackStackState;->mOps:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 145
    iget v1, p0, Landroid/app/BackStackState;->mTransition:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v1, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v1, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget v1, p0, Landroid/app/BackStackState;->mIndex:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 151
    iget v1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 153
    iget-object v1, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 154
    iget-object v1, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    iget-boolean v1, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return-void
.end method
