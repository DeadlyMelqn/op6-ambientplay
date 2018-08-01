.class Lcom/android/systemui/colorextraction/SysuiColorExtractor$1;
.super Landroid/view/IWallpaperVisibilityListener$Stub;
.source "SysuiColorExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/colorextraction/SysuiColorExtractor;-><init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor$1;->this$0:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object p2, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor$1;->val$handler:Landroid/os/Handler;

    .line 69
    invoke-direct {p0}, Landroid/view/IWallpaperVisibilityListener$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_colorextraction_SysuiColorExtractor$1_2888(Z)V
    .locals 1
    .param p1, "newVisibility"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor$1;->this$0:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->setWallpaperVisible(Z)V

    return-void
.end method

.method public onWallpaperVisibilityChanged(ZI)V
    .locals 2
    .param p1, "newVisibility"    # Z
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/colorextraction/-$Lambda$j2m7lOWVNe22BvvVwNuW1ftTq4c;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/colorextraction/-$Lambda$j2m7lOWVNe22BvvVwNuW1ftTq4c;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method
