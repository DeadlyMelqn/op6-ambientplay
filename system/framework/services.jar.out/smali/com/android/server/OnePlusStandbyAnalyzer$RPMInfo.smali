.class public Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RPMInfo"
.end annotation


# static fields
.field private static final synthetic -com-android-server-OnePlusStandbyAnalyzer$RPM_MODE_TYPESwitchesValues:[I


# instance fields
.field public mCount:I

.field public mEnd:I

.field public mIsVmin:Z

.field public mStart:I

.field public mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;


# direct methods
.method private static synthetic -getcom-android-server-OnePlusStandbyAnalyzer$RPM_MODE_TYPESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->-com-android-server-OnePlusStandbyAnalyzer$RPM_MODE_TYPESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->-com-android-server-OnePlusStandbyAnalyzer$RPM_MODE_TYPESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->aosd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->cxsd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vlow:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vmin:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->-com-android-server-OnePlusStandbyAnalyzer$RPM_MODE_TYPESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;I)V
    .locals 1
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;
    .param p2, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    .line 672
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    .line 673
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    .line 674
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    .line 676
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    .line 677
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    .line 678
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vmin:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->aosd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-ne p1, v0, :cond_1

    .line 679
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    .line 681
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;III)V
    .locals 1
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;
    .param p2, "count"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    const/4 v0, 0x0

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    .line 672
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    .line 673
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    .line 674
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    .line 683
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    .line 684
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    .line 685
    iput p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    .line 686
    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    .line 687
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vmin:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->aosd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-ne p1, v0, :cond_1

    .line 688
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    .line 690
    :cond_1
    return-void
.end method


# virtual methods
.method public isVlowAbnormal()Z
    .locals 3

    .prologue
    .line 695
    const/4 v0, 0x0

    .line 696
    .local v0, "result":Z
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->-getcom-android-server-OnePlusStandbyAnalyzer$RPM_MODE_TYPESwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 704
    :cond_0
    :goto_0
    return v0

    .line 698
    :pswitch_0
    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 701
    :pswitch_1
    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 696
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isVmin()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    return v0
.end method

.method public isVminAbnormal()Z
    .locals 3

    .prologue
    .line 707
    const/4 v0, 0x0

    .line 708
    .local v0, "result":Z
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->-getcom-android-server-OnePlusStandbyAnalyzer$RPM_MODE_TYPESwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 716
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 710
    :pswitch_1
    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 713
    :pswitch_2
    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 708
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "# RPMInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
