.class Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field public oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "oldHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 75
    iput-object p2, p0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 76
    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "oldHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 81
    iput p3, p0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    .line 82
    iput p4, p0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    .line 83
    iput p5, p0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    .line 84
    iput p6, p0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    .line 85
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ChangeInfo{oldHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string/jumbo v1, ", newHolder="

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    const-string/jumbo v1, ", fromX="

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    iget v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    const-string/jumbo v1, ", fromY="

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    iget v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    const-string/jumbo v1, ", toX="

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    iget v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    const-string/jumbo v1, ", toY="

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    iget v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const/16 v1, 0x7d

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
