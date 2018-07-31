.class Lcom/android/systemui/RoundedCorners$TunablePaddingTagListener;
.super Ljava/lang/Object;
.source "RoundedCorners.java"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/RoundedCorners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TunablePaddingTagListener"
.end annotation


# instance fields
.field private final mId:I

.field private final mPadding:I

.field private mTunablePadding:Lcom/android/systemui/tuner/TunablePadding;


# virtual methods
.method public onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$TunablePaddingTagListener;->mTunablePadding:Lcom/android/systemui/tuner/TunablePadding;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$TunablePaddingTagListener;->mTunablePadding:Lcom/android/systemui/tuner/TunablePadding;

    invoke-virtual {v1}, Lcom/android/systemui/tuner/TunablePadding;->destroy()V

    .line 214
    :cond_0
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/android/systemui/RoundedCorners$TunablePaddingTagListener;->mId:I

    if-eqz v1, :cond_1

    .line 216
    iget v1, p0, Lcom/android/systemui/RoundedCorners$TunablePaddingTagListener;->mId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 218
    :cond_1
    const-string/jumbo v1, "sysui_rounded_content_padding"

    iget v2, p0, Lcom/android/systemui/RoundedCorners$TunablePaddingTagListener;->mPadding:I

    .line 219
    const/4 v3, 0x3

    .line 218
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/tuner/TunablePadding;->addTunablePadding(Landroid/view/View;Ljava/lang/String;II)Lcom/android/systemui/tuner/TunablePadding;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/RoundedCorners$TunablePaddingTagListener;->mTunablePadding:Lcom/android/systemui/tuner/TunablePadding;

    .line 220
    return-void
.end method
