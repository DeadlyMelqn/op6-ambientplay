.class Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;
.super Landroid/database/DataSetObserver;
.source "PageIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/PageIndicator;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/car/PageIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/PageIndicator;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;->this$0:Lcom/android/systemui/statusbar/car/PageIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/car/PageIndicator;Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/PageIndicator;
    .param p2, "-this1"    # Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;-><init>(Lcom/android/systemui/statusbar/car/PageIndicator;)V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 1
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "oldAdapter"    # Landroid/support/v4/view/PagerAdapter;
    .param p3, "newAdapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;->this$0:Lcom/android/systemui/statusbar/car/PageIndicator;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/car/PageIndicator;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 191
    return-void
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;->this$0:Lcom/android/systemui/statusbar/car/PageIndicator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/PageIndicator;->-wrap0(Lcom/android/systemui/statusbar/car/PageIndicator;)V

    .line 196
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 185
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "unused1"    # I
    .param p2, "unused2"    # F
    .param p3, "unused3"    # I

    .prologue
    .line 167
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;->this$0:Lcom/android/systemui/statusbar/car/PageIndicator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/PageIndicator;->-get0(Lcom/android/systemui/statusbar/car/PageIndicator;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 172
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;->this$0:Lcom/android/systemui/statusbar/car/PageIndicator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/PageIndicator;->-get1(Lcom/android/systemui/statusbar/car/PageIndicator;)I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 176
    const-string/jumbo v0, "PageIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Position out of bounds, position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;->this$0:Lcom/android/systemui/statusbar/car/PageIndicator;

    invoke-static {v2}, Lcom/android/systemui/statusbar/car/PageIndicator;->-get1(Lcom/android/systemui/statusbar/car/PageIndicator;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;->this$0:Lcom/android/systemui/statusbar/car/PageIndicator;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/car/PageIndicator;->-set0(Lcom/android/systemui/statusbar/car/PageIndicator;I)I

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/PageIndicator$PageListener;->this$0:Lcom/android/systemui/statusbar/car/PageIndicator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/PageIndicator;->invalidate()V

    .line 182
    return-void
.end method
