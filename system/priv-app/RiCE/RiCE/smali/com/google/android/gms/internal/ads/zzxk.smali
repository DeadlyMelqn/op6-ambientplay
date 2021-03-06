.class public final Lcom/google/android/gms/internal/ads/zzxk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzww;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mStartTime:J

.field private final zzael:Z

.field private final zzbtj:Lcom/google/android/gms/internal/ads/zzwy;

.field private final zzbtn:Z

.field private final zzbto:Z

.field private final zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

.field private final zzbud:J

.field private zzbuf:Z

.field private final zzbuh:Ljava/lang/String;

.field private zzbui:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzxe;",
            ">;"
        }
    .end annotation
.end field

.field private zzbum:Lcom/google/android/gms/internal/ads/zzxb;

.field private final zzvr:Lcom/google/android/gms/internal/ads/zznx;

.field private final zzwh:Lcom/google/android/gms/internal/ads/zzxn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaef;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzwy;ZZLjava/lang/String;JJLcom/google/android/gms/internal/ads/zznx;Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzbuf:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzbui:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxk;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzwh:Lcom/google/android/gms/internal/ads/zzxn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzbtj:Lcom/google/android/gms/internal/ads/zzwy;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzael:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzbtn:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzbuh:Ljava/lang/String;

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzxk;->mStartTime:J

    iput-wide p10, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzbud:J

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzvr:Lcom/google/android/gms/internal/ads/zznx;

    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzbto:Z

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzbuf:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzbum:Lcom/google/android/gms/internal/ads/zzxb;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzbum:Lcom/google/android/gms/internal/ads/zzxb;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzxb;->cancel()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzh(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzxe;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzwx;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzxe;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "Starting mediation."

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct/range {v1 .. v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzvr:Lcom/google/android/gms/internal/ads/zznx;

    invoke-virtual/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zznx;->zzjj()Lcom/google/android/gms/internal/ads/zznv;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzjn;->zzard:[Lcom/google/android/gms/internal/ads/zzjn;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfd()Lcom/google/android/gms/internal/ads/zzxg;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzbuh:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Ljava/lang/String;[I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    aget v7, v4, v5

    aget v4, v4, v6

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzjn;->zzard:[Lcom/google/android/gms/internal/ads/zzjn;

    array-length v9, v8

    :goto_0
    if-ge v5, v9, :cond_1

    aget-object v10, v8, v5

    iget v11, v10, Lcom/google/android/gms/internal/ads/zzjn;->width:I

    if-ne v7, v11, :cond_0

    iget v11, v10, Lcom/google/android/gms/internal/ads/zzjn;->height:I

    if-ne v4, v11, :cond_0

    move-object v3, v10

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface/range {v4 .. v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface/range {v4 .. v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzwx;

    const-string v7, "Trying mediation network: "

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzwx;->zzbrs:Ljava/lang/String;

    invoke-static/range {v8 .. v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v8 .. v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_3
    invoke-static/range {v7 .. v7}, Lcom/google/android/gms/internal/ads/zzakb;->zzdj(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzwx;->zzbrt:Ljava/util/List;

    invoke-interface/range {v7 .. v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface/range {v7 .. v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface/range {v7 .. v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzvr:Lcom/google/android/gms/internal/ads/zznx;

    invoke-virtual/range {v9 .. v9}, Lcom/google/android/gms/internal/ads/zznx;->zzjj()Lcom/google/android/gms/internal/ads/zznv;

    move-result-object v9

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzxk;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzbuf:Z

    if-eqz v10, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxe;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzxe;-><init>(I)V

    monitor-exit v15

    return-object v0

    :cond_3
    new-instance v14, Lcom/google/android/gms/internal/ads/zzxb;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzxk;->mContext:Landroid/content/Context;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzwh:Lcom/google/android/gms/internal/ads/zzxn;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzbtj:Lcom/google/android/gms/internal/ads/zzwy;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzaef;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaef;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    move-object/from16 v26, v4

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzael:Z

    move-object/from16 v27, v7

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzbtn:Z

    move-object/from16 v28, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzaef;->zzadj:Lcom/google/android/gms/internal/ads/zzpl;

    move-object/from16 v29, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzaef;->zzads:Ljava/util/List;

    move-object/from16 v30, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzaef;->zzcdk:Ljava/util/List;

    move-object/from16 v31, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzaef;->zzcef:Ljava/util/List;

    move-object/from16 v32, v2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzbto:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v24, v10

    move-object/from16 v16, v28

    move-object/from16 v21, v29

    move-object/from16 v22, v30

    move-object/from16 v23, v31

    move-object v10, v14

    move-object/from16 v17, v12

    move-object v12, v8

    move-object/from16 v33, v9

    move-object v9, v14

    move-object/from16 v14, v17

    move-object/from16 v28, v15

    move-object v15, v5

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move/from16 v19, v4

    move/from16 v20, v7

    move/from16 v25, v2

    :try_start_1
    invoke-direct/range {v10 .. v25}, Lcom/google/android/gms/internal/ads/zzxb;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzwy;Lcom/google/android/gms/internal/ads/zzwx;Lcom/google/android/gms/internal/ads/zzjj;Lcom/google/android/gms/internal/ads/zzjn;Lcom/google/android/gms/internal/ads/zzang;ZZLcom/google/android/gms/internal/ads/zzpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzbum:Lcom/google/android/gms/internal/ads/zzxb;

    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzbum:Lcom/google/android/gms/internal/ads/zzxb;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzxk;->mStartTime:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzbud:J

    invoke-virtual {v2, v6, v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzxb;->zza(JJ)Lcom/google/android/gms/internal/ads/zzxe;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzbui:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzxe;->zzbtv:I

    if-nez v4, :cond_5

    const-string v3, "Adapter succeeded."

    invoke-static/range {v3 .. v3}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzvr:Lcom/google/android/gms/internal/ads/zznx;

    const-string v4, "mediation_network_succeed"

    invoke-virtual {v3, v4, v8}, Lcom/google/android/gms/internal/ads/zznx;->zze(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v1 .. v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzvr:Lcom/google/android/gms/internal/ads/zznx;

    const-string v4, "mediation_networks_fail"

    const-string v5, ","

    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zznx;->zze(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzvr:Lcom/google/android/gms/internal/ads/zznx;

    const-string v3, "mls"

    filled-new-array/range {v3 .. v3}, [Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v33

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/ads/zznx;->zza(Lcom/google/android/gms/internal/ads/zznv;[Ljava/lang/String;)Z

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzvr:Lcom/google/android/gms/internal/ads/zznx;

    const-string v1, "ttm"

    filled-new-array/range {v1 .. v1}, [Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v32

    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/internal/ads/zznx;->zza(Lcom/google/android/gms/internal/ads/zznv;[Ljava/lang/String;)Z

    return-object v2

    :cond_5
    move-object/from16 v6, v32

    move-object/from16 v4, v33

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzvr:Lcom/google/android/gms/internal/ads/zznx;

    const-string v8, "mlf"

    filled-new-array/range {v8 .. v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/google/android/gms/internal/ads/zznx;->zza(Lcom/google/android/gms/internal/ads/zznv;[Ljava/lang/String;)Z

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzxe;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzxl;

    invoke-direct {v7, v0, v2}, Lcom/google/android/gms/internal/ads/zzxl;-><init>(Lcom/google/android/gms/internal/ads/zzxk;Lcom/google/android/gms/internal/ads/zzxe;)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    move-object v2, v6

    move-object/from16 v4, v26

    move-object/from16 v7, v27

    const/4 v6, 0x1

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v28, v15

    :goto_5
    :try_start_2
    monitor-exit v28
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_7
    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_8
    invoke-interface/range {v1 .. v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzvr:Lcom/google/android/gms/internal/ads/zznx;

    const-string v2, "mediation_networks_fail"

    const-string v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zznx;->zze(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxe;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzxe;-><init>(I)V

    return-object v0
.end method

.method public final zzme()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzxe;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzbui:Ljava/util/List;

    return-object p0
.end method
