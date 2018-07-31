.class public Lcom/android/server/net/NetworkStatsCollection;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsCollection$Key;
    }
.end annotation


# static fields
.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final VERSION_NETWORK_INIT:I = 0x1

.field private static final VERSION_UID_INIT:I = 0x1

.field private static final VERSION_UID_WITH_IDENT:I = 0x2

.field private static final VERSION_UID_WITH_SET:I = 0x4

.field private static final VERSION_UID_WITH_TAG:I = 0x3

.field private static final VERSION_UNIFIED_INIT:I = 0x10


# instance fields
.field private final mBucketDuration:J

.field private mDirty:Z

.field private mEndMillis:J

.field private mStartMillis:J

.field private mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "bucketDuration"    # J

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    .line 103
    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    .line 104
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 105
    return-void
.end method

.method private dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "groupTemplate"    # Landroid/net/NetworkTemplate;
    .param p7, "groupPrefix"    # Ljava/lang/String;

    .prologue
    .line 712
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 715
    .local v9, "grouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v10, v4, :cond_3

    .line 716
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 717
    .local v11, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .line 719
    .local v3, "value":Landroid/net/NetworkStatsHistory;
    iget-object v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v0, p6

    invoke-static {v0, v4}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 715
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 720
    :cond_1
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_0

    .line 722
    new-instance v8, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v5, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v6, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    const/4 v7, 0x0

    invoke-direct {v8, v7, v4, v5, v6}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 723
    .local v8, "groupKey":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 724
    .local v2, "groupHistory":Landroid/net/NetworkStatsHistory;
    if-nez v2, :cond_2

    .line 725
    new-instance v2, Landroid/net/NetworkStatsHistory;

    .end local v2    # "groupHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    .line 726
    .restart local v2    # "groupHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v9, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-wide v4, p2

    move-wide/from16 v6, p4

    .line 728
    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    goto :goto_1

    .line 731
    .end local v2    # "groupHistory":Landroid/net/NetworkStatsHistory;
    .end local v3    # "value":Landroid/net/NetworkStatsHistory;
    .end local v8    # "groupKey":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_3
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v10, v4, :cond_5

    .line 732
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 733
    .restart local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .line 735
    .restart local v3    # "value":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 731
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 737
    :cond_4
    const-string/jumbo v4, "c,"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 738
    move-object/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 739
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 740
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v4}, Landroid/net/NetworkStats;->setToCheckinString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 741
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 742
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 744
    invoke-virtual {v3, p1}, Landroid/net/NetworkStatsHistory;->dumpCheckin(Ljava/io/PrintWriter;)V

    goto :goto_3

    .line 746
    .end local v3    # "value":Landroid/net/NetworkStatsHistory;
    .end local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_5
    return-void
.end method

.method private estimateBuckets()I
    .locals 4

    .prologue
    .line 651
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    sub-long/2addr v0, v2

    const-wide v2, 0xb43e9400L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 652
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    .line 651
    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;
    .locals 8
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .prologue
    .line 423
    new-instance v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 424
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 427
    .local v0, "existing":Landroid/net/NetworkStatsHistory;
    const/4 v2, 0x0

    .line 428
    .local v2, "updated":Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_1

    .line 429
    new-instance v2, Landroid/net/NetworkStatsHistory;

    .end local v2    # "updated":Landroid/net/NetworkStatsHistory;
    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 434
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 435
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    return-object v2

    .line 430
    .restart local v2    # "updated":Landroid/net/NetworkStatsHistory;
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 431
    new-instance v2, Landroid/net/NetworkStatsHistory;

    .end local v2    # "updated":Landroid/net/NetworkStatsHistory;
    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {v2, v0, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(Landroid/net/NetworkStatsHistory;J)V

    .local v2, "updated":Landroid/net/NetworkStatsHistory;
    goto :goto_0

    .line 438
    .end local v2    # "updated":Landroid/net/NetworkStatsHistory;
    :cond_2
    return-object v0
.end method

.method private getSortedKeys()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 657
    .local v0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 658
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 659
    return-object v0
.end method

.method public static multiplySafe(JJJ)J
    .locals 16
    .param p0, "value"    # J
    .param p2, "num"    # J
    .param p4, "den"    # J

    .prologue
    .line 188
    move-wide/from16 v8, p0

    .line 189
    .local v8, "x":J
    move-wide/from16 v10, p2

    .line 192
    .local v10, "y":J
    mul-long v6, p0, p2

    .line 193
    .local v6, "r":J
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 194
    .local v2, "ax":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 195
    .local v4, "ay":J
    or-long v12, v2, v4

    const/16 v14, 0x1f

    ushr-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_2

    .line 199
    const-wide/16 v12, 0x0

    cmp-long v12, p2, v12

    if-eqz v12, :cond_1

    div-long v12, v6, p2

    cmp-long v12, v12, p0

    if-eqz v12, :cond_1

    .line 202
    :cond_0
    move-wide/from16 v0, p2

    long-to-double v12, v0

    move-wide/from16 v0, p4

    long-to-double v14, v0

    div-double/2addr v12, v14

    move-wide/from16 v0, p0

    long-to-double v14, v0

    mul-double/2addr v12, v14

    double-to-long v12, v12

    return-wide v12

    .line 200
    :cond_1
    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v12, p0, v12

    if-nez v12, :cond_2

    const-wide/16 v12, -0x1

    cmp-long v12, p2, v12

    if-eqz v12, :cond_0

    .line 205
    :cond_2
    div-long v12, v6, p4

    return-wide v12
.end method

.method private noteRecordedHistory(JJJ)V
    .locals 3
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "totalBytes"    # J

    .prologue
    .line 644
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    .line 645
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    iput-wide p3, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    .line 646
    :cond_1
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 648
    return-void
.end method

.method private recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    .locals 8
    .param p1, "key"    # Lcom/android/server/net/NetworkStatsCollection$Key;
    .param p2, "history"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 398
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 399
    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    .line 401
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 402
    .local v0, "target":Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_1

    .line 403
    new-instance v0, Landroid/net/NetworkStatsHistory;

    .end local v0    # "target":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    .line 404
    .restart local v0    # "target":Landroid/net/NetworkStatsHistory;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_1
    invoke-virtual {v0, p2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 407
    return-void
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z
    .locals 3
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "identSet"    # Lcom/android/server/net/NetworkIdentitySet;

    .prologue
    .line 753
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ident$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkIdentity;

    .line 754
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {p0, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 755
    const/4 v2, 0x1

    return v2

    .line 758
    .end local v0    # "ident":Landroid/net/NetworkIdentity;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public clearDirty()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 145
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->getSortedKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 664
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    const-string/jumbo v3, "ident="

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 665
    const-string/jumbo v3, " uid="

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 666
    const-string/jumbo v3, " set="

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v3}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 667
    const-string/jumbo v3, " tag="

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v3}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 669
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 670
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 671
    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 672
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_0

    .line 674
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .end local v1    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_0
    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 700
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string/jumbo v7, "cell"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 701
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string/jumbo v7, "wifi"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 702
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string/jumbo v7, "eth"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 703
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateBluetooth()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string/jumbo v7, "bt"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    return-wide v0
.end method

.method public getFirstAtomicBucketMillis()J
    .locals 4

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 124
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 125
    return-wide v2

    .line 127
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;
    .locals 51
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "augmentPlan"    # Landroid/telephony/SubscriptionPlan;
    .param p3, "uid"    # I
    .param p4, "set"    # I
    .param p5, "tag"    # I
    .param p6, "fields"    # I
    .param p7, "start"    # J
    .param p9, "end"    # J
    .param p11, "accessLevel"    # I
    .param p12, "callerUid"    # I

    .prologue
    .line 236
    move/from16 v0, p3

    move/from16 v1, p12

    move/from16 v2, p11

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v11

    if-nez v11, :cond_0

    .line 237
    new-instance v11, Ljava/lang/SecurityException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Network stats history of uid "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 238
    const-string/jumbo v23, " is forbidden for caller "

    .line 237
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 241
    :cond_0
    sub-long v22, p9, p7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    move-wide/from16 v28, v0

    div-long v22, v22, v28

    move-wide/from16 v0, v22

    long-to-int v10, v0

    .line 242
    .local v10, "bucketEstimate":I
    new-instance v4, Landroid/net/NetworkStatsHistory;

    .line 243
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    move-wide/from16 v22, v0

    .line 242
    move-wide/from16 v0, v22

    move/from16 v2, p6

    invoke-direct {v4, v0, v1, v10, v2}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 246
    .local v4, "combined":Landroid/net/NetworkStatsHistory;
    cmp-long v11, p7, p9

    if-nez v11, :cond_1

    return-object v4

    .line 249
    :cond_1
    const-wide/16 v12, -0x1

    .line 250
    .local v12, "augmentStart":J
    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v14

    .line 253
    .local v14, "augmentEnd":J
    :goto_0
    move-wide/from16 v6, p7

    .line 254
    .local v6, "collectStart":J
    move-wide/from16 v8, p9

    .line 256
    .local v8, "collectEnd":J
    const-wide/16 v22, -0x1

    cmp-long v11, v14, v22

    if-eqz v11, :cond_3

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v43

    .line 258
    .local v43, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;>;"
    :cond_2
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 259
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/util/Pair;

    .line 260
    .local v34, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    move-object/from16 v0, v34

    iget-object v11, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/time/ZonedDateTime;

    invoke-virtual {v11}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v38

    .line 261
    .local v38, "cycleStart":J
    move-object/from16 v0, v34

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/time/ZonedDateTime;

    invoke-virtual {v11}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v36

    .line 262
    .local v36, "cycleEnd":J
    cmp-long v11, v38, v14

    if-gtz v11, :cond_2

    cmp-long v11, v14, v36

    if-gez v11, :cond_2

    .line 263
    move-wide/from16 v12, v38

    .line 264
    move-wide/from16 v0, p7

    move-wide/from16 v2, v38

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v6

    .line 265
    move-wide/from16 v0, p9

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v8

    .line 271
    .end local v34    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .end local v36    # "cycleEnd":J
    .end local v38    # "cycleStart":J
    .end local v43    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;>;"
    :cond_3
    const-wide/16 v22, -0x1

    cmp-long v11, v12, v22

    if-eqz v11, :cond_4

    .line 273
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/net/NetworkStatsCollection;->roundUp(J)J

    move-result-wide v12

    .line 274
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/server/net/NetworkStatsCollection;->roundDown(J)J

    move-result-wide v14

    .line 276
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsCollection;->roundDown(J)J

    move-result-wide v6

    .line 277
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/server/net/NetworkStatsCollection;->roundUp(J)J

    move-result-wide v8

    .line 280
    :cond_4
    const/16 v42, 0x0

    .local v42, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    move/from16 v0, v42

    if-ge v0, v11, :cond_7

    .line 281
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    move/from16 v0, v42

    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 282
    .local v44, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    move-object/from16 v0, v44

    iget v11, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    move/from16 v0, p3

    if-ne v11, v0, :cond_5

    move-object/from16 v0, v44

    iget v11, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    move/from16 v0, p4

    invoke-static {v0, v11}, Landroid/net/NetworkStats;->setMatches(II)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, v44

    iget v11, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    move/from16 v0, p5

    if-ne v11, v0, :cond_5

    .line 283
    move-object/from16 v0, v44

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v11

    .line 282
    if-eqz v11, :cond_5

    .line 284
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    move/from16 v0, v42

    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 285
    .local v5, "value":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {v4 .. v9}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 280
    .end local v5    # "value":Landroid/net/NetworkStatsHistory;
    :cond_5
    add-int/lit8 v42, v42, 0x1

    goto :goto_1

    .line 251
    .end local v6    # "collectStart":J
    .end local v8    # "collectEnd":J
    .end local v14    # "augmentEnd":J
    .end local v42    # "i":I
    .end local v44    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_6
    const-wide/16 v14, -0x1

    .restart local v14    # "augmentEnd":J
    goto/16 :goto_0

    .line 289
    .restart local v6    # "collectStart":J
    .restart local v8    # "collectEnd":J
    .restart local v42    # "i":I
    :cond_7
    const-wide/16 v22, -0x1

    cmp-long v11, v12, v22

    if-eqz v11, :cond_d

    .line 291
    const/16 v16, 0x0

    move-object v11, v4

    .line 290
    invoke-virtual/range {v11 .. v16}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v35

    .line 295
    .local v35, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v22, v0

    const-wide/16 v28, 0x0

    cmp-long v11, v22, v28

    if-eqz v11, :cond_8

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v22, v0

    const-wide/16 v28, 0x0

    cmp-long v11, v22, v28

    if-nez v11, :cond_9

    .line 297
    :cond_8
    new-instance v17, Landroid/net/NetworkStats$Entry;

    const-wide/16 v18, 0x1

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x1

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    invoke-direct/range {v17 .. v27}, Landroid/net/NetworkStats$Entry;-><init>(JJJJJ)V

    move-object v11, v4

    move-object/from16 v16, v17

    .line 296
    invoke-virtual/range {v11 .. v16}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    move-object v11, v4

    move-object/from16 v16, v35

    .line 298
    invoke-virtual/range {v11 .. v16}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    .line 301
    :cond_9
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v28, v0

    add-long v20, v22, v28

    .line 302
    .local v20, "rawBytes":J
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    .line 303
    .local v18, "rawRxBytes":J
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v24, v0

    .line 304
    .local v24, "rawTxBytes":J
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v16

    .line 305
    .local v16, "targetBytes":J
    invoke-static/range {v16 .. v21}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v46

    .local v46, "targetRxBytes":J
    move-wide/from16 v22, v16

    move-wide/from16 v26, v20

    .line 306
    invoke-static/range {v22 .. v27}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v48

    .line 309
    .local v48, "targetTxBytes":J
    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v32

    .line 310
    .local v32, "beforeTotal":J
    const/16 v42, 0x0

    :goto_2
    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v11

    move/from16 v0, v42

    if-ge v0, v11, :cond_b

    .line 311
    move/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    .line 312
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-wide/from16 v22, v0

    cmp-long v11, v22, v12

    if-ltz v11, :cond_a

    .line 313
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    move-wide/from16 v28, v0

    add-long v22, v22, v28

    cmp-long v11, v22, v14

    if-gtz v11, :cond_a

    .line 314
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v28, v0

    move-wide/from16 v26, v46

    move-wide/from16 v30, v18

    invoke-static/range {v26 .. v31}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 315
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v28, v0

    move-wide/from16 v26, v48

    move-wide/from16 v30, v24

    invoke-static/range {v26 .. v31}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 318
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 319
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 320
    move/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Landroid/net/NetworkStatsHistory;->setValues(ILandroid/net/NetworkStatsHistory$Entry;)V

    .line 310
    :cond_a
    add-int/lit8 v42, v42, 0x1

    goto :goto_2

    .line 324
    :cond_b
    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v22

    sub-long v40, v22, v32

    .line 325
    .local v40, "deltaTotal":J
    const-wide/16 v22, 0x0

    cmp-long v11, v40, v22

    if-eqz v11, :cond_c

    .line 326
    const-string/jumbo v11, "NetworkStats"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Augmented network usage by "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " bytes"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_c
    new-instance v26, Landroid/net/NetworkStatsHistory;

    .line 331
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    move-wide/from16 v22, v0

    .line 330
    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v10, v3}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .local v26, "sliced":Landroid/net/NetworkStatsHistory;
    move-object/from16 v27, v4

    move-wide/from16 v28, p7

    move-wide/from16 v30, p9

    .line 332
    invoke-virtual/range {v26 .. v31}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 333
    return-object v26

    .line 335
    .end local v16    # "targetBytes":J
    .end local v18    # "rawRxBytes":J
    .end local v20    # "rawBytes":J
    .end local v24    # "rawTxBytes":J
    .end local v26    # "sliced":Landroid/net/NetworkStatsHistory;
    .end local v32    # "beforeTotal":J
    .end local v35    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v40    # "deltaTotal":J
    .end local v46    # "targetRxBytes":J
    .end local v48    # "targetTxBytes":J
    :cond_d
    return-object v4
.end method

.method public getRelevantUids(I)[I
    .locals 1
    .param p1, "accessLevel"    # I

    .prologue
    .line 209
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getRelevantUids(II)[I
    .locals 5
    .param p1, "accessLevel"    # I
    .param p2, "callerUid"    # I

    .prologue
    .line 214
    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    .line 215
    .local v3, "uids":Landroid/util/IntArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 216
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 217
    .local v2, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v4, p2, p1}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v3, v4}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v1

    .line 220
    .local v1, "j":I
    if-gez v1, :cond_0

    .line 221
    not-int v1, v1

    .line 222
    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v3, v1, v4}, Landroid/util/IntArray;->add(II)V

    .line 215
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    .end local v2    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_1
    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    return-object v4
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    return-wide v0
.end method

.method public getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;
    .locals 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "accessLevel"    # I
    .param p7, "callerUid"    # I

    .prologue
    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 347
    .local v8, "now":J
    new-instance v13, Landroid/net/NetworkStats;

    sub-long v4, p4, p2

    const/16 v6, 0x18

    invoke-direct {v13, v4, v5, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 350
    .local v13, "stats":Landroid/net/NetworkStats;
    cmp-long v4, p2, p4

    if-nez v4, :cond_0

    return-object v13

    .line 352
    :cond_0
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 353
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v10, 0x0

    .line 355
    .local v10, "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    const/4 v11, 0x0

    .end local v10    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    .local v11, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v11, v4, :cond_4

    .line 356
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 357
    .local v12, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v4}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 358
    iget v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    move/from16 v0, p7

    move/from16 v1, p6

    invoke-static {v4, v0, v1}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v4

    .line 357
    if-eqz v4, :cond_1

    .line 359
    iget v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_1

    .line 360
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .local v3, "value":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    .line 361
    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 363
    .local v10, "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v4, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 364
    iget v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iput v4, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 365
    iget v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iput v4, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 366
    iget v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iput v4, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 367
    iget-object v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkIdentitySet;->isAnyMemberMetered()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    iput v4, v2, Landroid/net/NetworkStats$Entry;->metered:I

    .line 368
    iget-object v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkIdentitySet;->isAnyMemberRoaming()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    iput v4, v2, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 369
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 370
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 371
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 372
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 373
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->operations:J

    .line 375
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 376
    invoke-virtual {v13, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 355
    .end local v3    # "value":Landroid/net/NetworkStatsHistory;
    .end local v10    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 367
    .restart local v3    # "value":Landroid/net/NetworkStatsHistory;
    .restart local v10    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 368
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 381
    .end local v3    # "value":Landroid/net/NetworkStatsHistory;
    .end local v10    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v12    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_4
    return-object v13
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    return-wide v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 16
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 450
    .local v7, "magic":I
    const v13, 0x414e4554

    if-eq v7, v13, :cond_0

    .line 451
    new-instance v13, Ljava/net/ProtocolException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected magic: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 454
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 455
    .local v12, "version":I
    packed-switch v12, :pswitch_data_0

    .line 476
    new-instance v13, Ljava/net/ProtocolException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected version: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 458
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 459
    .local v4, "identSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 460
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 462
    .local v3, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 463
    .local v9, "size":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v9, :cond_1

    .line 464
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 465
    .local v11, "uid":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 466
    .local v8, "set":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 468
    .local v10, "tag":I
    new-instance v6, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v6, v3, v11, v8, v10}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 469
    .local v6, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    new-instance v1, Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 470
    .local v1, "history":Landroid/net/NetworkStatsHistory;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 463
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 459
    .end local v1    # "history":Landroid/net/NetworkStatsHistory;
    .end local v6    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v8    # "set":I
    .end local v10    # "tag":I
    .end local v11    # "uid":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 479
    .end local v3    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v5    # "j":I
    .end local v9    # "size":I
    :cond_2
    return-void

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/DataInputStream;)V

    .line 445
    return-void
.end method

.method public readLegacyNetwork(Ljava/io/File;)V
    .locals 14
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 516
    new-instance v6, Landroid/util/AtomicFile;

    invoke-direct {v6, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 518
    .local v6, "inputFile":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    .line 520
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 523
    .end local v4    # "in":Ljava/io/DataInputStream;
    .local v5, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 524
    .local v8, "magic":I
    const v11, 0x414e4554

    if-eq v8, v11, :cond_0

    .line 525
    new-instance v11, Ljava/net/ProtocolException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unexpected magic: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    .end local v8    # "magic":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .line 549
    .end local v5    # "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 551
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 528
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "magic":I
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 529
    .local v10, "version":I
    packed-switch v10, :pswitch_data_0

    .line 543
    new-instance v11, Ljava/net/ProtocolException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unexpected version: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 548
    .end local v8    # "magic":I
    .end local v10    # "version":I
    :catchall_0
    move-exception v11

    move-object v4, v5

    .line 549
    .end local v5    # "in":Ljava/io/DataInputStream;
    :goto_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 548
    throw v11

    .line 532
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "magic":I
    .restart local v10    # "version":I
    :pswitch_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 533
    .local v9, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v9, :cond_1

    .line 534
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v3, v5}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 535
    .local v3, "ident":Lcom/android/server/net/NetworkIdentitySet;
    new-instance v1, Landroid/net/NetworkStatsHistory;

    invoke-direct {v1, v5}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 537
    .local v1, "history":Landroid/net/NetworkStatsHistory;
    new-instance v7, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-direct {v7, v3, v11, v12, v13}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 538
    .local v7, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-direct {p0, v7, v1}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 549
    .end local v1    # "history":Landroid/net/NetworkStatsHistory;
    .end local v3    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v7    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    goto :goto_1

    .line 548
    .end local v2    # "i":I
    .end local v8    # "magic":I
    .end local v9    # "size":I
    .end local v10    # "version":I
    .local v4, "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v11

    goto :goto_2

    .line 546
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 529
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public readLegacyUid(Ljava/io/File;Z)V
    .locals 21
    .param p1, "file"    # Ljava/io/File;
    .param p2, "onlyTags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 555
    new-instance v9, Landroid/util/AtomicFile;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 557
    .local v9, "inputFile":Landroid/util/AtomicFile;
    const/4 v7, 0x0

    .line 559
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v18, Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 562
    .end local v7    # "in":Ljava/io/DataInputStream;
    .local v8, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 563
    .local v12, "magic":I
    const v18, 0x414e4554

    move/from16 v0, v18

    if-eq v12, v0, :cond_0

    .line 564
    new-instance v18, Ljava/net/ProtocolException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "unexpected magic: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    .end local v12    # "magic":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    move-object v7, v8

    .line 614
    .end local v8    # "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 616
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 567
    .restart local v8    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "magic":I
    :cond_0
    :try_start_2
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 568
    .local v17, "version":I
    packed-switch v17, :pswitch_data_0

    .line 608
    new-instance v18, Ljava/net/ProtocolException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "unexpected version: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 613
    .end local v12    # "magic":I
    .end local v17    # "version":I
    :catchall_0
    move-exception v18

    move-object v7, v8

    .line 614
    .end local v8    # "in":Ljava/io/DataInputStream;
    :goto_2
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 613
    throw v18

    .line 586
    .restart local v8    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "magic":I
    .restart local v17    # "version":I
    :pswitch_0
    :try_start_3
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 587
    .local v6, "identSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v6, :cond_5

    .line 588
    new-instance v5, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v5, v8}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 590
    .local v5, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 591
    .local v14, "size":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_4
    if-ge v10, v14, :cond_4

    .line 592
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 593
    .local v16, "uid":I
    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 595
    .local v13, "set":I
    :goto_5
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 597
    .local v15, "tag":I
    new-instance v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    move/from16 v0, v16

    invoke-direct {v11, v5, v0, v13, v15}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 598
    .local v11, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    new-instance v3, Landroid/net/NetworkStatsHistory;

    invoke-direct {v3, v8}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 600
    .local v3, "history":Landroid/net/NetworkStatsHistory;
    if-nez v15, :cond_3

    const/16 v18, 0x1

    :goto_6
    move/from16 v0, v18

    move/from16 v1, p2

    if-eq v0, v1, :cond_1

    .line 601
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 591
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 594
    .end local v3    # "history":Landroid/net/NetworkStatsHistory;
    .end local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v13    # "set":I
    .end local v15    # "tag":I
    :cond_2
    const/4 v13, 0x0

    .restart local v13    # "set":I
    goto :goto_5

    .line 600
    .restart local v3    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .restart local v15    # "tag":I
    :cond_3
    const/16 v18, 0x0

    goto :goto_6

    .line 587
    .end local v3    # "history":Landroid/net/NetworkStatsHistory;
    .end local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v13    # "set":I
    .end local v15    # "tag":I
    .end local v16    # "uid":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 614
    .end local v4    # "i":I
    .end local v5    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v6    # "identSize":I
    .end local v10    # "j":I
    .end local v14    # "size":I
    :cond_5
    :pswitch_1
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v7, v8

    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    goto :goto_1

    .line 613
    .end local v12    # "magic":I
    .end local v17    # "version":I
    .local v7, "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v18

    goto :goto_2

    .line 611
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_0

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    .locals 4
    .param p1, "another"    # Lcom/android/server/net/NetworkStatsCollection;

    .prologue
    .line 414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 415
    iget-object v3, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 416
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v3, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 417
    .local v2, "value":Landroid/net/NetworkStatsHistory;
    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    .end local v1    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v2    # "value":Landroid/net/NetworkStatsHistory;
    :cond_0
    return-void
.end method

.method public recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V
    .locals 13
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "start"    # J
    .param p7, "end"    # J
    .param p9, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 389
    invoke-direct/range {p0 .. p4}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .local v3, "history":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    .line 390
    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 391
    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v8

    move-object/from16 v0, p9

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, p9

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v4

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    .line 392
    return-void
.end method

.method public removeUids([I)V
    .locals 8
    .param p1, "uids"    # [I

    .prologue
    const/4 v7, 0x0

    .line 624
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 625
    .local v2, "knownKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 628
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 629
    .local v0, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v5, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 631
    iget v5, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-nez v5, :cond_1

    .line 632
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStatsHistory;

    .line 634
    .local v4, "uidHistory":Landroid/net/NetworkStatsHistory;
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const/4 v6, -0x4

    .line 633
    invoke-direct {p0, v5, v6, v7, v7}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .line 635
    .local v3, "removedHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3, v4}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 637
    .end local v3    # "removedHistory":Landroid/net/NetworkStatsHistory;
    .end local v4    # "uidHistory":Landroid/net/NetworkStatsHistory;
    :cond_1
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    goto :goto_0

    .line 641
    .end local v0    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 109
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    .line 110
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 113
    return-void
.end method

.method public roundDown(J)J
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 168
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 170
    :cond_0
    return-wide p1

    .line 169
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 172
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    rem-long v0, p1, v2

    .line 173
    .local v0, "mod":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 174
    sub-long/2addr p1, v0

    .line 176
    :cond_2
    return-wide p1
.end method

.method public roundUp(J)J
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 153
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 155
    :cond_0
    return-wide p1

    .line 154
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 157
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    rem-long v0, p1, v2

    .line 158
    .local v0, "mod":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 159
    sub-long/2addr p1, v0

    .line 160
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    add-long/2addr p1, v2

    .line 162
    :cond_2
    return-wide p1
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 484
    .local v6, "keysByIdent":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;>;"
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 485
    .local v3, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v7, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 486
    .local v5, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    if-nez v5, :cond_0

    .line 487
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 488
    iget-object v7, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_0
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 493
    .end local v3    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    :cond_1
    const v7, 0x414e4554

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 494
    const/16 v7, 0x10

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 496
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 497
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ident$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkIdentitySet;

    .line 498
    .local v1, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 499
    .restart local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 501
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 502
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 503
    .restart local v3    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 504
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    iget v7, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 505
    iget v7, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 506
    iget v7, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 507
    invoke-virtual {v0, p1}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V

    goto :goto_1

    .line 511
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .end local v1    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v3    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 512
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .prologue
    .line 677
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 679
    .local v4, "start":J
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->getSortedKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 680
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    const-wide v10, 0x21100000001L

    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 683
    .local v8, "startStats":J
    const-wide v10, 0x11100000001L

    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 684
    .local v6, "startKey":J
    iget-object v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const-wide v10, 0x11100000001L

    invoke-virtual {v3, p1, v10, v11}, Lcom/android/server/net/NetworkIdentitySet;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 685
    iget v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    const-wide v10, 0x10300000002L

    invoke-virtual {p1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 686
    iget v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const-wide v10, 0x10300000003L

    invoke-virtual {p1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 687
    iget v3, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    const-wide v10, 0x10300000004L

    invoke-virtual {p1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 688
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 691
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 692
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    const-wide v10, 0x11100000002L

    invoke-virtual {v0, p1, v10, v11}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 693
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    .line 696
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .end local v1    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v6    # "startKey":J
    .end local v8    # "startStats":J
    :cond_0
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 697
    return-void
.end method
