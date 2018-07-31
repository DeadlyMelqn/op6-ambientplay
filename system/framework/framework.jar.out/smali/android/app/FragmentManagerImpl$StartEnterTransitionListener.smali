.class Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/app/Fragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field private final mIsBack:Z

.field private mNumPostponed:I

.field private final mRecord:Landroid/app/BackStackRecord;


# direct methods
.method static synthetic -get0(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Z
    .locals 1
    .param p0, "-this"    # Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    .prologue
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    return v0
.end method

.method static synthetic -get1(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;
    .locals 1
    .param p0, "-this"    # Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    .prologue
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    return-object v0
.end method

.method public constructor <init>(Landroid/app/BackStackRecord;Z)V
    .locals 0
    .param p1, "record"    # Landroid/app/BackStackRecord;
    .param p2, "isBack"    # Z

    .prologue
    .line 3652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3653
    iput-boolean p2, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    .line 3654
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    .line 3655
    return-void
.end method


# virtual methods
.method public cancelTransaction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3713
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v0, v0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    invoke-static {v0, v1, v2, v3, v3}, Landroid/app/FragmentManagerImpl;->-wrap0(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;ZZZ)V

    .line 3714
    return-void
.end method

.method public completeTransaction()V
    .locals 10

    .prologue
    .line 3695
    iget v5, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-lez v5, :cond_1

    const/4 v0, 0x1

    .line 3696
    .local v0, "canceled":Z
    :goto_0
    iget-object v5, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v3, v5, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 3697
    .local v3, "manager":Landroid/app/FragmentManagerImpl;
    iget-object v5, v3, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3698
    .local v4, "numAdded":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 3699
    iget-object v5, v3, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3700
    .local v1, "fragment":Landroid/app/Fragment;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/Fragment;->setOnStartEnterTransitionListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V

    .line 3701
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/app/Fragment;->isPostponed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3702
    invoke-virtual {v1}, Landroid/app/Fragment;->startPostponedEnterTransition()V

    .line 3698
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3695
    .end local v0    # "canceled":Z
    .end local v1    # "fragment":Landroid/app/Fragment;
    .end local v2    # "i":I
    .end local v3    # "manager":Landroid/app/FragmentManagerImpl;
    .end local v4    # "numAdded":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "canceled":Z
    goto :goto_0

    .line 3705
    .restart local v2    # "i":I
    .restart local v3    # "manager":Landroid/app/FragmentManagerImpl;
    .restart local v4    # "numAdded":I
    :cond_2
    iget-object v5, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v5, v5, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v6, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-boolean v7, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    xor-int/lit8 v8, v0, 0x1

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Landroid/app/FragmentManagerImpl;->-wrap0(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;ZZZ)V

    .line 3706
    return-void
.end method

.method public isReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3685
    iget v1, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onStartEnterTransition()V
    .locals 1

    .prologue
    .line 3664
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3665
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-eqz v0, :cond_0

    .line 3666
    return-void

    .line 3668
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v0, v0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-static {v0}, Landroid/app/FragmentManagerImpl;->-wrap1(Landroid/app/FragmentManagerImpl;)V

    .line 3669
    return-void
.end method

.method public startListening()V
    .locals 1

    .prologue
    .line 3678
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3679
    return-void
.end method
