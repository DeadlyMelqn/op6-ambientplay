.class Lcom/ice/box/MainActivity$6;
.super Lcom/google/android/gms/ads/AdListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/MainActivity;->doAdvertising()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/MainActivity;

.field final synthetic val$mAdView:Lcom/google/android/gms/ads/AdView;


# direct methods
.method constructor <init>(Lcom/ice/box/MainActivity;Lcom/google/android/gms/ads/AdView;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/ice/box/MainActivity$6;->this$0:Lcom/ice/box/MainActivity;

    iput-object p2, p0, Lcom/ice/box/MainActivity$6;->val$mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 2

    .line 577
    iget-object p1, p0, Lcom/ice/box/MainActivity$6;->val$mAdView:Lcom/google/android/gms/ads/AdView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 578
    iget-object p1, p0, Lcom/ice/box/MainActivity$6;->this$0:Lcom/ice/box/MainActivity;

    iget-object v0, p0, Lcom/ice/box/MainActivity$6;->this$0:Lcom/ice/box/MainActivity;

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Lcom/ice/box/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/ice/box/MainActivity;->access$302(Lcom/ice/box/MainActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 579
    iget-object p1, p0, Lcom/ice/box/MainActivity$6;->this$0:Lcom/ice/box/MainActivity;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/MainActivity;->access$300(Lcom/ice/box/MainActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 580
    iget-object p1, p0, Lcom/ice/box/MainActivity$6;->this$0:Lcom/ice/box/MainActivity;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/MainActivity;->access$300(Lcom/ice/box/MainActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f08005d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    const/4 p1, 0x0

    .line 583
    iget-object v0, p0, Lcom/ice/box/MainActivity$6;->this$0:Lcom/ice/box/MainActivity;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/MainActivity;->access$300(Lcom/ice/box/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 584
    iget-object p1, p0, Lcom/ice/box/MainActivity$6;->this$0:Lcom/ice/box/MainActivity;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/MainActivity;->access$300(Lcom/ice/box/MainActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    :cond_1
    if-eqz p1, :cond_2

    .line 587
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 589
    :cond_2
    iget-object p1, p0, Lcom/ice/box/MainActivity$6;->this$0:Lcom/ice/box/MainActivity;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/MainActivity;->access$300(Lcom/ice/box/MainActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 590
    iget-object p1, p0, Lcom/ice/box/MainActivity$6;->this$0:Lcom/ice/box/MainActivity;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/MainActivity;->access$300(Lcom/ice/box/MainActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 592
    :cond_3
    iget-object p1, p0, Lcom/ice/box/MainActivity$6;->this$0:Lcom/ice/box/MainActivity;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/MainActivity;->access$300(Lcom/ice/box/MainActivity;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/ice/box/MainActivity$6$1;

    invoke-direct {v0, p0}, Lcom/ice/box/MainActivity$6$1;-><init>(Lcom/ice/box/MainActivity$6;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
