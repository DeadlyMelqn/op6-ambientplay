.class public Lcom/android/settings/datausage/CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/CycleAdapter$CycleItem;,
        Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/datausage/CycleAdapter$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spinner"    # Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;
    .param p3, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;
    .param p4, "isHeader"    # Z

    .prologue
    .line 41
    if-eqz p4, :cond_0

    const v0, 0x7f040085

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 43
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CycleAdapter;->setDropDownViewResource(I)V

    .line 44
    iput-object p2, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    .line 45
    iput-object p3, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 46
    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v0, p0}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setAdapter(Lcom/android/settings/datausage/CycleAdapter;)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    iget-object v1, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, v1}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 48
    return-void

    .line 42
    :cond_0
    const v0, 0x7f04006a

    goto :goto_0
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I
    .locals 5
    .param p1, "target"    # Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .prologue
    const/4 v4, 0x0

    .line 55
    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v0

    .line 57
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 58
    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 59
    .local v2, "item":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    invoke-virtual {v2, p1}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->compareTo(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 60
    return v1

    .line 57
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 64
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    :cond_1
    return v4
.end method

.method public updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z
    .locals 28
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "chartData"    # Lcom/android/settingslib/net/ChartData;

    .prologue
    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v2}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->getSelectedItem()Ljava/lang/Object;

    move-result-object v26

    .line 74
    check-cast v26, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 76
    .local v26, "previousItem":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->clear()V

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 79
    .local v9, "context":Landroid/content/Context;
    const/4 v8, 0x0

    .line 81
    .local v8, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const-wide v20, 0x7fffffffffffffffL

    .line 82
    .local v20, "historyStart":J
    const-wide/high16 v18, -0x8000000000000000L

    .line 83
    .local v18, "historyEnd":J
    if-eqz p2, :cond_0

    .line 84
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v20

    .line 85
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v18

    .line 88
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 89
    .local v24, "now":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v20, v2

    if-nez v2, :cond_1

    move-wide/from16 v20, v24

    .line 90
    :cond_1
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v18, v2

    if-nez v2, :cond_2

    const-wide/16 v2, 0x1

    add-long v18, v24, v2

    .line 92
    :cond_2
    const/16 v17, 0x0

    .line 93
    .local v17, "hasCycles":Z
    if-eqz p1, :cond_6

    .line 94
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v23

    .line 96
    .end local v8    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v23, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;>;"
    :cond_3
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 97
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/Pair;

    .line 98
    .local v16, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 99
    .local v4, "cycleStart":J
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 102
    .local v6, "cycleEnd":J
    if-eqz p2, :cond_5

    .line 103
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 104
    .local v8, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v10, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v2, v10

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_4

    const/16 v22, 0x1

    .line 109
    .end local v8    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v22, "includeCycle":Z
    :goto_1
    if-eqz v22, :cond_3

    .line 110
    new-instance v2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v3, v9

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    .line 111
    const/16 v17, 0x1

    goto :goto_0

    .line 104
    .end local v22    # "includeCycle":Z
    .restart local v8    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_4
    const/16 v22, 0x0

    .restart local v22    # "includeCycle":Z
    goto :goto_1

    .line 106
    .end local v8    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v22    # "includeCycle":Z
    :cond_5
    const/16 v22, 0x1

    .restart local v22    # "includeCycle":Z
    goto :goto_1

    .line 116
    .end local v4    # "cycleStart":J
    .end local v6    # "cycleEnd":J
    .end local v16    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .end local v22    # "includeCycle":Z
    .end local v23    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;>;"
    :cond_6
    if-nez v17, :cond_a

    .line 118
    move-wide/from16 v6, v18

    .line 119
    .restart local v6    # "cycleEnd":J
    :goto_2
    cmp-long v2, v6, v20

    if-lez v2, :cond_a

    .line 120
    const-wide v2, 0x90321000L

    sub-long v4, v6, v2

    .line 123
    .restart local v4    # "cycleStart":J
    if-eqz p2, :cond_9

    .line 124
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 125
    .restart local v8    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v10, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v2, v10

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_8

    const/16 v22, 0x1

    .line 130
    .end local v8    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v22    # "includeCycle":Z
    :goto_3
    if-eqz v22, :cond_7

    .line 131
    new-instance v2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v3, v9

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    .line 133
    :cond_7
    move-wide v6, v4

    goto :goto_2

    .line 125
    .end local v22    # "includeCycle":Z
    .restart local v8    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_8
    const/16 v22, 0x0

    .restart local v22    # "includeCycle":Z
    goto :goto_3

    .line 127
    .end local v8    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v22    # "includeCycle":Z
    :cond_9
    const/16 v22, 0x1

    .restart local v22    # "includeCycle":Z
    goto :goto_3

    .line 138
    .end local v4    # "cycleStart":J
    .end local v6    # "cycleEnd":J
    .end local v22    # "includeCycle":Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_b

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v13

    .line 140
    .local v13, "position":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v2, v13}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setSelection(I)V

    .line 144
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 145
    .local v27, "selectedItem":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 146
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const-wide/16 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v10 .. v15}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 147
    const/4 v2, 0x0

    return v2

    .line 150
    .end local v13    # "position":I
    .end local v27    # "selectedItem":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    :cond_b
    const/4 v2, 0x1

    return v2
.end method
