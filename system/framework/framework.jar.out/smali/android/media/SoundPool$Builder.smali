.class public Landroid/media/SoundPool$Builder;
.super Ljava/lang/Object;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mMaxStreams:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/SoundPool$Builder;->mMaxStreams:I

    .line 575
    return-void
.end method


# virtual methods
.method public build()Landroid/media/SoundPool;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 608
    iget-object v0, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-nez v0, :cond_0

    .line 609
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 610
    const/4 v1, 0x1

    .line 609
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 612
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    iget v1, p0, Landroid/media/SoundPool$Builder;->mMaxStreams:I

    iget-object v2, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;Landroid/media/SoundPool;)V

    return-object v0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 600
    if-nez p1, :cond_0

    .line 601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_0
    iput-object p1, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 604
    return-object p0
.end method

.method public setMaxStreams(I)Landroid/media/SoundPool$Builder;
    .locals 2
    .param p1, "maxStreams"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 584
    if-gtz p1, :cond_0

    .line 585
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 586
    const-string/jumbo v1, "Strictly positive value required for the maximum number of streams"

    .line 585
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_0
    iput p1, p0, Landroid/media/SoundPool$Builder;->mMaxStreams:I

    .line 589
    return-object p0
.end method
