.class public final Lcom/google/android/gms/internal/ads/zzafs;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# static fields
.field private static final zzcho:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzafs;->zzcho:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaef;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaej;
    .locals 54

    move-object/from16 v0, p1

    const/4 v15, 0x0

    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v1, p2

    invoke-direct {v10, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ad_base_url"

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_url"

    invoke-virtual {v10, v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "ad_size"

    invoke-virtual {v10, v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "ad_slot_size"

    invoke-virtual {v10, v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzcdb:I

    if-eqz v2, :cond_0

    move/from16 v24, v12

    goto :goto_0

    :cond_0
    move/from16 v24, v15

    :goto_0
    const-string v2, "ad_json"

    invoke-virtual {v10, v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "ad_html"

    invoke-virtual {v10, v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    const-string v2, "body"

    invoke-virtual {v10, v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    const-string v3, "ads"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v10 .. v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string v3, "debug_dialog"

    invoke-virtual {v10, v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v3, "debug_signals"

    invoke-virtual {v10, v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v3, "interstitial_timeout"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v8, -0x1

    if-eqz v3, :cond_4

    const-string v3, "interstitial_timeout"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v16

    double-to-long v5, v5

    move-wide/from16 v16, v5

    goto :goto_1

    :cond_4
    move-wide/from16 v16, v8

    :goto_1
    const-string v3, "orientation"

    invoke-virtual {v10, v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "portrait"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v14, -0x1

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object v3

    invoke-virtual/range {v3 .. v3}, Lcom/google/android/gms/internal/ads/zzakq;->zzrm()I

    move-result v3

    :goto_2
    move/from16 v18, v3

    goto :goto_3

    :cond_5
    const-string v5, "landscape"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object v3

    invoke-virtual/range {v3 .. v3}, Lcom/google/android/gms/internal/ads/zzakq;->zzrl()I

    move-result v3

    goto :goto_2

    :cond_6
    move/from16 v18, v14

    :goto_3
    invoke-static/range {v2 .. v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static/range {v4 .. v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    invoke-static/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzafn;->zza(Lcom/google/android/gms/internal/ads/zzaef;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzafm;)Lcom/google/android/gms/internal/ads/zzaej;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzbyq:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzceo:Ljava/lang/String;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzceu:J

    move-wide/from16 v20, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_4

    :cond_7
    move-object v3, v1

    move-object v4, v2

    move-object v1, v11

    const-wide/16 v20, -0x1

    :goto_4
    if-nez v4, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaej;

    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    return-object v0

    :cond_8
    const-string v2, "click_urls"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_9

    move-object v5, v11

    goto :goto_5

    :cond_9
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzbsn:Ljava/util/List;

    :goto_5
    if-eqz v2, :cond_a

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    :cond_a
    const-string v2, "impression_urls"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_b

    move-object v6, v11

    goto :goto_6

    :cond_b
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzbso:Ljava/util/List;

    :goto_6
    if-eqz v2, :cond_c

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v6, v2

    :cond_c
    const-string v2, "downloaded_impression_urls"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_d

    move-object v7, v11

    goto :goto_7

    :cond_d
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzbsp:Ljava/util/List;

    :goto_7
    if-eqz v2, :cond_e

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v48, v2

    goto :goto_8

    :cond_e
    move-object/from16 v48, v7

    :goto_8
    const-string v2, "manual_impression_urls"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_f

    move-object v7, v11

    goto :goto_9

    :cond_f
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzces:Ljava/util/List;

    :goto_9
    if-eqz v2, :cond_10

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_a

    :cond_10
    move-object/from16 v22, v7

    :goto_a
    if-eqz v1, :cond_12

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaej;->orientation:I

    if-eq v2, v14, :cond_11

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaej;->orientation:I

    move/from16 v18, v2

    :cond_11
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcep:J

    const-wide/16 v25, 0x0

    cmp-long v2, v7, v25

    if-lez v2, :cond_12

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcep:J

    move-wide v7, v1

    goto :goto_b

    :cond_12
    move-wide/from16 v7, v16

    :goto_b
    const-string v1, "active_view"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v1, "ad_is_javascript"

    invoke-virtual {v10, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v25

    if-eqz v25, :cond_13

    const-string v1, "ad_passback_url"

    invoke-virtual {v10, v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v26, v1

    goto :goto_c

    :cond_13
    move-object/from16 v26, v11

    :goto_c
    const-string v1, "mediation"

    invoke-virtual {v10, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v1, "custom_render_allowed"

    invoke-virtual {v10, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v27

    const-string v1, "content_url_opted_out"

    invoke-virtual {v10, v1, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const-string v1, "content_vertical_opted_out"

    invoke-virtual {v10, v1, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v43

    const-string v1, "prefetch"

    invoke-virtual {v10, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v29

    const-string v1, "refresh_interval_milliseconds"

    const-wide/16 v11, -0x1

    invoke-virtual {v10, v1, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v1, "mediation_config_cache_time_milliseconds"

    invoke-virtual {v10, v1, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v1, "gws_query_id"

    const-string v2, ""

    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v1, "height"

    const-string v2, "fluid"

    const-string v14, ""

    invoke-virtual {v10, v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    const-string v1, "native_express"

    invoke-virtual {v10, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v32

    const-string v1, "video_start_urls"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v33

    const-string v1, "video_complete_urls"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v34

    const-string v1, "rewards"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzaig;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/ads/zzaig;

    move-result-object v35

    const-string v1, "use_displayed_impression"

    invoke-virtual {v10, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v36

    const-string v1, "auto_protection_configuration"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzael;->zzl(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzael;

    move-result-object v37

    const-string v1, "set_cookie"

    const-string v2, ""

    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string v1, "remote_ping_urls"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v39

    const-string v1, "safe_browsing"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzo(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v41

    const-string v1, "render_in_browser"

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzbss:Z

    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v44

    const-string v1, "custom_close_blocked"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v45

    const-string v1, "enable_omid"

    invoke-virtual {v10, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v47

    const-string v1, "omid_settings"

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    const-string v1, "disable_closable_area"

    invoke-virtual {v10, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v49

    new-instance v51, Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzcdd:Z

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzcdr:Z

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzced:Z

    const/16 v46, 0x0

    move-object/from16 v1, v51

    move/from16 v52, v2

    move-object/from16 v2, p1

    move v0, v10

    move-wide v10, v11

    move-object/from16 v12, v22

    move-object/from16 v22, v13

    move/from16 v53, v14

    move-wide/from16 v13, v16

    move/from16 v15, v18

    move-object/from16 v16, v22

    move-wide/from16 v17, v20

    move/from16 v20, v25

    move-object/from16 v21, v26

    move-object/from16 v22, v23

    move/from16 v23, v27

    move/from16 v25, v53

    move/from16 v26, v28

    move/from16 v27, v29

    move-object/from16 v28, v30

    move/from16 v29, v31

    move/from16 v30, v32

    move-object/from16 v31, v35

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move/from16 v34, v36

    move-object/from16 v35, v37

    move/from16 v36, v0

    move-object/from16 v37, v38

    move-object/from16 v38, v39

    move/from16 v39, v44

    move/from16 v44, v52

    invoke-direct/range {v1 .. v50}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(Lcom/google/android/gms/internal/ads/zzaef;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/internal/ads/zzaig;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzael;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/String;ZZZIZLjava/util/List;ZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v51

    :catch_0
    move-exception v0

    const-string v1, "Could not parse the inline ad response: "

    invoke-virtual/range {v0 .. v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    return-object v0
.end method

.method private static zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzafl;)Lorg/json/JSONObject;
    .locals 19
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgs:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzaqe:Landroid/location/Location;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgt:Lcom/google/android/gms/internal/ads/zzaga;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcdc:Landroid/os/Bundle;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgu:Lorg/json/JSONObject;

    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct/range {v8 .. v8}, Ljava/util/HashMap;-><init>()V

    const-string v0, "extra_caps"

    sget-object v9, Lcom/google/android/gms/internal/ads/zznk;->zzbbk:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcdj:Ljava/util/List;

    invoke-interface/range {v0 .. v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "eid"

    const-string v9, ","

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcdj:Ljava/util/List;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzccu:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v0, "ad_pos"

    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzccu:Landroid/os/Bundle;

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzajw;->zzqn()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v10, "abf"

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    const-string v9, "cust_age"

    sget-object v10, Lcom/google/android/gms/internal/ads/zzafs;->zzcho:Ljava/text/SimpleDateFormat;

    new-instance v13, Ljava/util/Date;

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjj;->extras:Landroid/os/Bundle;

    if-eqz v9, :cond_4

    const-string v9, "extras"

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjj;->extras:Landroid/os/Bundle;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapx:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    const-string v9, "cust_gender"

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapx:I

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    if-eqz v9, :cond_6

    const-string v9, "kw"

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    invoke-virtual {v8, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqa:I

    if-eq v9, v10, :cond_7

    const-string v9, "tag_for_child_directed_treatment"

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqa:I

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapz:Z

    const/4 v13, 0x1

    if-eqz v9, :cond_9

    sget-object v9, Lcom/google/android/gms/internal/ads/zznk;->zzbfp:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual/range {v9 .. v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "test_request"

    invoke-static/range {v13 .. v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    :goto_0
    invoke-virtual {v8, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    const-string v9, "adtest"

    const-string v14, "on"

    goto :goto_0

    :cond_9
    :goto_1
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzjj;->versionCode:I

    const/4 v14, 0x2

    if-lt v9, v14, :cond_b

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqb:Z

    if-eqz v9, :cond_a

    const-string v9, "d_imp_hdr"

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqc:Ljava/lang/String;

    invoke-static/range {v9 .. v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "ppid"

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqc:Ljava/lang/String;

    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzjj;->versionCode:I

    const/4 v15, 0x3

    if-lt v9, v15, :cond_c

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqf:Ljava/lang/String;

    if-eqz v9, :cond_c

    const-string v9, "url"

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqf:Ljava/lang/String;

    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzjj;->versionCode:I

    const/4 v15, 0x5

    if-lt v9, v15, :cond_f

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqh:Landroid/os/Bundle;

    if-eqz v9, :cond_d

    const-string v9, "custom_targeting"

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqh:Landroid/os/Bundle;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqi:Ljava/util/List;

    if-eqz v7, :cond_e

    const-string v7, "category_exclusions"

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqi:Ljava/util/List;

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqj:Ljava/lang/String;

    if-eqz v7, :cond_f

    const-string v7, "request_agent"

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqj:Ljava/lang/String;

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzjj;->versionCode:I

    const/4 v9, 0x6

    if-lt v7, v9, :cond_10

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqk:Ljava/lang/String;

    if-eqz v7, :cond_10

    const-string v7, "request_pkg"

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqk:Ljava/lang/String;

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzjj;->versionCode:I

    const/4 v9, 0x7

    if-lt v7, v9, :cond_11

    const-string v7, "is_designed_for_families"

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaql:Z

    invoke-static/range {v0 .. v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzard:[Lcom/google/android/gms/internal/ads/zzjn;

    if-nez v0, :cond_12

    const-string v0, "format"

    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzjn;->zzarb:Ljava/lang/String;

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzarf:Z

    if-eqz v0, :cond_16

    const-string v0, "fluid"

    const-string v9, "height"

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_12
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzard:[Lcom/google/android/gms/internal/ads/zzjn;

    array-length v9, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_2
    if-ge v15, v9, :cond_16

    aget-object v11, v0, v15

    iget-boolean v12, v11, Lcom/google/android/gms/internal/ads/zzjn;->zzarf:Z

    if-nez v12, :cond_13

    if-nez v16, :cond_13

    const-string v12, "format"

    iget-object v13, v11, Lcom/google/android/gms/internal/ads/zzjn;->zzarb:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x1

    :cond_13
    iget-boolean v11, v11, Lcom/google/android/gms/internal/ads/zzjn;->zzarf:Z

    if-eqz v11, :cond_14

    if-nez v17, :cond_14

    const-string v11, "fluid"

    const-string v12, "height"

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0x1

    :cond_14
    if-eqz v16, :cond_15

    if-nez v17, :cond_16

    :cond_15
    add-int/lit8 v15, v15, 0x1

    const-wide/16 v11, -0x1

    const/4 v13, 0x1

    goto :goto_2

    :cond_16
    :goto_3
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzjn;->width:I

    if-ne v0, v10, :cond_17

    const-string v0, "smart_w"

    const-string v9, "full"

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzjn;->height:I

    const/4 v9, -0x2

    if-ne v0, v9, :cond_18

    const-string v0, "smart_h"

    const-string v11, "auto"

    invoke-virtual {v8, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzard:[Lcom/google/android/gms/internal/ads/zzjn;

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzjn;->zzard:[Lcom/google/android/gms/internal/ads/zzjn;

    array-length v12, v11

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_4
    if-ge v13, v12, :cond_1d

    aget-object v14, v11, v13

    iget-boolean v7, v14, Lcom/google/android/gms/internal/ads/zzjn;->zzarf:Z

    if-eqz v7, :cond_19

    const/4 v15, 0x1

    goto :goto_7

    :cond_19
    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1a

    const-string v7, "|"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget v7, v14, Lcom/google/android/gms/internal/ads/zzjn;->width:I

    if-ne v7, v10, :cond_1b

    iget v7, v14, Lcom/google/android/gms/internal/ads/zzjn;->widthPixels:I

    int-to-float v7, v7

    iget v10, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzagu:F

    div-float/2addr v7, v10

    float-to-int v7, v7

    goto :goto_5

    :cond_1b
    iget v7, v14, Lcom/google/android/gms/internal/ads/zzjn;->width:I

    :goto_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v14, Lcom/google/android/gms/internal/ads/zzjn;->height:I

    if-ne v7, v9, :cond_1c

    iget v7, v14, Lcom/google/android/gms/internal/ads/zzjn;->heightPixels:I

    int-to-float v7, v7

    iget v10, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzagu:F

    div-float/2addr v7, v10

    float-to-int v7, v7

    goto :goto_6

    :cond_1c
    iget v7, v14, Lcom/google/android/gms/internal/ads/zzjn;->height:I

    :goto_6
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v13, v13, 0x1

    const/4 v10, -0x1

    const/4 v14, 0x2

    goto :goto_4

    :cond_1d
    if-eqz v15, :cond_1f

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1e

    const-string v7, "|"

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1e
    const/4 v10, 0x0

    :goto_8
    const-string v7, "320x50"

    invoke-virtual {v0, v10, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    const-string v7, "sz"

    invoke-virtual {v8, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdb:I

    const/16 v7, 0x18

    if-eqz v0, :cond_24

    const-string v0, "native_version"

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdb:I

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "native_templates"

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzads:Ljava/util/List;

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "native_image_orientation"

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzadj:Lcom/google/android/gms/internal/ads/zzpl;

    if-nez v10, :cond_21

    :pswitch_0
    const-string v10, "any"

    goto :goto_9

    :cond_21
    iget v10, v10, Lcom/google/android/gms/internal/ads/zzpl;->zzbjo:I

    packed-switch v10, :pswitch_data_0

    const-string v10, "not_set"

    goto :goto_9

    :pswitch_1
    const-string v10, "landscape"

    goto :goto_9

    :pswitch_2
    const-string v10, "portrait"

    :goto_9
    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdk:Ljava/util/List;

    invoke-interface/range {v0 .. v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "native_custom_templates"

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdk:Ljava/util/List;

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    if-lt v0, v7, :cond_23

    const-string v0, "max_num_ads"

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzceg:I

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcee:Ljava/lang/String;

    invoke-static/range {v0 .. v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v0, :cond_24

    :try_start_1
    const-string v0, "native_advanced_settings"

    new-instance v10, Lorg/json/JSONArray;

    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcee:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    :try_start_2
    const-string v10, "Problem creating json from native advanced settings"

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_24
    :goto_a
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzadn:Ljava/util/List;

    if-eqz v0, :cond_27

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzadn:Ljava/util/List;

    invoke-interface/range {v0 .. v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_27

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzadn:Ljava/util/List;

    invoke-interface/range {v0 .. v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_b
    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual/range {v10 .. v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_26

    const-string v10, "iba"

    const/4 v11, 0x1

    invoke-static/range {v11 .. v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    :goto_c
    invoke-virtual {v8, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_26
    invoke-virtual/range {v10 .. v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_25

    const-string v10, "ina"

    invoke-static/range {v11 .. v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_c

    :cond_27
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzarg:Z

    if-eqz v0, :cond_28

    const-string v0, "ene"

    const/4 v10, 0x1

    invoke-static/range {v10 .. v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaxv:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "xsrve"

    const/4 v10, 0x1

    invoke-static/range {v10 .. v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzadl:Lcom/google/android/gms/internal/ads/zzlu;

    if-eqz v0, :cond_2a

    const-string v0, "is_icon_ad"

    const/4 v10, 0x1

    invoke-static/range {v10 .. v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "icon_ad_expansion_behavior"

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzadl:Lcom/google/android/gms/internal/ads/zzlu;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzlu;->zzasj:I

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    const-string v0, "slotname"

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzacp:Ljava/lang/String;

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pn"

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzaef;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzccw:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_2b

    const-string v0, "vc"

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzccw:Landroid/content/pm/PackageInfo;

    iget v10, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    const-string v0, "ms"

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzccx:Ljava/lang/String;

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "seq_num"

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzccy:Ljava/lang/String;

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "session_id"

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzccz:Ljava/lang/String;

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "js"

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgo:Lcom/google/android/gms/internal/ads/zzagk;

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdw:Landroid/os/Bundle;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgn:Landroid/os/Bundle;

    const-string v12, "am"

    iget v13, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjk:I

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "cog"

    iget-boolean v13, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjl:Z

    invoke-static/range {v13 .. v13}, Lcom/google/android/gms/internal/ads/zzafs;->zzv(Z)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "coh"

    iget-boolean v13, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjm:Z

    invoke-static/range {v13 .. v13}, Lcom/google/android/gms/internal/ads/zzafs;->zzv(Z)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjn:Ljava/lang/String;

    invoke-static/range {v12 .. v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2c

    const-string v12, "carrier"

    iget-object v13, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjn:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    const-string v12, "gl"

    iget-object v13, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjo:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v12, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjp:Z

    if-eqz v12, :cond_2d

    const-string v12, "simulator"

    const/4 v13, 0x1

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    iget-boolean v12, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjq:Z

    if-eqz v12, :cond_2e

    const-string v12, "is_sidewinder"

    const/4 v13, 0x1

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_2e
    const/4 v13, 0x1

    :goto_d
    const-string v12, "ma"

    iget-boolean v14, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjr:Z

    invoke-static/range {v14 .. v14}, Lcom/google/android/gms/internal/ads/zzafs;->zzv(Z)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "sp"

    iget-boolean v14, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjs:Z

    invoke-static/range {v14 .. v14}, Lcom/google/android/gms/internal/ads/zzafs;->zzv(Z)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "hl"

    iget-object v14, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjt:Ljava/lang/String;

    invoke-virtual {v8, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcju:Ljava/lang/String;

    invoke-static/range {v12 .. v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2f

    const-string v12, "mv"

    iget-object v14, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcju:Ljava/lang/String;

    invoke-virtual {v8, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    const-string v12, "muv"

    iget v14, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjw:I

    invoke-static/range {v14 .. v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v12, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjx:I

    if-eq v12, v9, :cond_30

    const-string v9, "cnt"

    iget v12, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjx:I

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    const-string v9, "gnt"

    iget v12, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjy:I

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "pt"

    iget v12, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjz:I

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "rm"

    iget v12, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcka:I

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "riv"

    iget v12, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzckb:I

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct/range {v9 .. v9}, Landroid/os/Bundle;-><init>()V

    const-string v12, "build_build"

    iget-object v14, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzckg:Ljava/lang/String;

    invoke-virtual {v9, v12, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "build_device"

    iget-object v14, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzckh:Ljava/lang/String;

    invoke-virtual {v9, v12, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Landroid/os/Bundle;

    invoke-direct/range {v12 .. v12}, Landroid/os/Bundle;-><init>()V

    const-string v14, "is_charging"

    iget-boolean v15, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzckd:Z

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v14, "battery_level"

    move-object/from16 v18, v8

    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzckc:D

    invoke-virtual {v12, v14, v7, v8}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v7, "battery"

    invoke-virtual {v9, v7, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct/range {v7 .. v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "active_network_state"

    iget v12, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzckf:I

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "active_network_metered"

    iget-boolean v12, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcke:Z

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v0, :cond_31

    new-instance v8, Landroid/os/Bundle;

    invoke-direct/range {v8 .. v8}, Landroid/os/Bundle;-><init>()V

    const-string v12, "predicted_latency_micros"

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzagk;->zzckq:I

    invoke-virtual {v8, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "predicted_down_throughput_bps"

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzagk;->zzckr:J

    invoke-virtual {v8, v12, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v12, "predicted_up_throughput_bps"

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzagk;->zzcks:J

    invoke-virtual {v8, v12, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "predictions"

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_31
    const-string v0, "network"

    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct/range {v0 .. v0}, Landroid/os/Bundle;-><init>()V

    const-string v7, "is_browser_custom_tabs_capable"

    iget-boolean v8, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcki:Z

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v7, "browser"

    invoke-virtual {v9, v7, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz v10, :cond_33

    const-string v0, "android_mem_info"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct/range {v7 .. v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "runtime_free"

    const-string v12, "runtime_free_memory"

    const-wide/16 v14, -0x1

    invoke-virtual {v10, v12, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "runtime_max"

    const-string v12, "runtime_max_memory"

    invoke-virtual {v10, v12, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "runtime_total"

    const-string v12, "runtime_total_memory"

    invoke-virtual {v10, v12, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static/range {v14 .. v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "web_view_count"

    const-string v12, "web_view_count"

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "debug_memory_info"

    invoke-virtual {v10, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/Debug$MemoryInfo;

    if-eqz v8, :cond_32

    const-string v10, "debug_info_dalvik_private_dirty"

    iget v12, v8, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "debug_info_dalvik_pss"

    iget v12, v8, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "debug_info_dalvik_shared_dirty"

    iget v12, v8, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "debug_info_native_private_dirty"

    iget v12, v8, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "debug_info_native_pss"

    iget v12, v8, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "debug_info_native_shared_dirty"

    iget v12, v8, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "debug_info_other_private_dirty"

    iget v12, v8, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "debug_info_other_pss"

    iget v12, v8, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "debug_info_other_shared_dirty"

    iget v8, v8, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_e

    :cond_33
    const/4 v14, 0x0

    :goto_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct/range {v0 .. v0}, Landroid/os/Bundle;-><init>()V

    const-string v7, "parental_controls"

    invoke-virtual {v0, v7, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjv:Ljava/lang/String;

    invoke-static/range {v7 .. v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_34

    const-string v7, "package_version"

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcjv:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    const-string v7, "play_store"

    invoke-virtual {v9, v7, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "device"

    move-object/from16 v7, v18

    invoke-virtual {v7, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct/range {v0 .. v0}, Landroid/os/Bundle;-><init>()V

    const-string v8, "doritos"

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgp:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "doritos_v2"

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgq:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/google/android/gms/internal/ads/zznk;->zzayj:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual/range {v8 .. v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_37

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgr:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v8, :cond_35

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgr:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual/range {v8 .. v8}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgr:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual/range {v9 .. v9}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v9

    goto :goto_f

    :cond_35
    move v9, v14

    const/4 v8, 0x0

    :goto_f
    invoke-static/range {v8 .. v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_36

    const-string v10, "rdid"

    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "is_lat"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v8, "idtype"

    const-string v9, "adid"

    :goto_10
    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamu;->zzbd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "pdid"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "pdidtype"

    const-string v9, "ssaid"

    goto :goto_10

    :cond_37
    :goto_11
    const-string v8, "pii"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "platform"

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "submodel"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_38

    invoke-static {v7, v3}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Ljava/util/HashMap;Landroid/location/Location;)V

    goto :goto_12

    :cond_38
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzjj;->versionCode:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_39

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqe:Landroid/location/Location;

    if-eqz v0, :cond_39

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqe:Landroid/location/Location;

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Ljava/util/HashMap;Landroid/location/Location;)V

    :cond_39
    :goto_12
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_3a

    const-string v0, "quality_signals"

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcda:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/4 v3, 0x4

    if-lt v0, v3, :cond_3b

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdd:Z

    if-eqz v0, :cond_3b

    const-string v0, "forceHttps"

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdd:Z

    invoke-static/range {v3 .. v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    if-eqz v5, :cond_3c

    const-string v0, "content_info"

    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/4 v3, 0x5

    if-lt v0, v3, :cond_3d

    const-string v0, "u_sd"

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzagu:F

    invoke-static/range {v3 .. v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sh"

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdf:I

    invoke-static/range {v3 .. v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sw"

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcde:I

    invoke-static/range {v3 .. v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_13
    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_3d
    const-string v0, "u_sd"

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzagu:F

    invoke-static/range {v3 .. v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sh"

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcdf:I

    invoke-static/range {v3 .. v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sw"

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzaga;->zzcde:I

    invoke-static/range {v3 .. v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_13

    :goto_14
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/4 v3, 0x6

    if-lt v0, v3, :cond_3f

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdg:Ljava/lang/String;

    invoke-static/range {v0 .. v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v0, :cond_3e

    :try_start_3
    const-string v0, "view_hierarchy"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdg:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_15

    :catch_1
    move-exception v0

    :try_start_4
    const-string v3, "Problem serializing view hierarchy to JSON"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3e
    :goto_15
    const-string v0, "correlation_id"

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdh:J

    invoke-static/range {v3 .. v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/4 v3, 0x7

    if-lt v0, v3, :cond_40

    const-string v0, "request_id"

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdi:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/16 v3, 0xc

    if-lt v0, v3, :cond_41

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdm:Ljava/lang/String;

    invoke-static/range {v0 .. v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "anchor"

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdm:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/16 v3, 0xd

    if-lt v0, v3, :cond_42

    const-string v0, "android_app_volume"

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdn:F

    invoke-static/range {v3 .. v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_43

    const-string v0, "android_app_muted"

    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdt:Z

    invoke-static/range {v4 .. v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/16 v4, 0xe

    if-lt v0, v4, :cond_44

    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdo:I

    if-lez v0, :cond_44

    const-string v0, "target_api"

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdo:I

    invoke-static/range {v4 .. v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/16 v4, 0xf

    if-lt v0, v4, :cond_46

    const-string v0, "scroll_index"

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdp:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_45

    goto :goto_16

    :cond_45
    iget v10, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdp:I

    move v5, v10

    :goto_16
    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_47

    const-string v0, "_activity_context"

    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdq:Z

    invoke-static/range {v4 .. v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    if-lt v0, v3, :cond_49

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdu:Ljava/lang/String;

    invoke-static/range {v0 .. v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v0, :cond_48

    :try_start_5
    const-string v0, "app_settings"

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdu:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_17

    :catch_2
    move-exception v0

    :try_start_6
    const-string v4, "Problem creating json from app settings"

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_48
    :goto_17
    const-string v0, "render_in_browser"

    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzbss:Z

    invoke-static/range {v4 .. v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    if-lt v0, v3, :cond_4a

    const-string v0, "android_num_video_cache_tasks"

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdv:I

    invoke-static/range {v3 .. v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzceh:Z

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgv:Z

    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcej:Z

    new-instance v5, Landroid/os/Bundle;

    invoke-direct/range {v5 .. v5}, Landroid/os/Bundle;-><init>()V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct/range {v8 .. v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "cl"

    const-string v10, "193400285"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "rapid_rc"

    const-string v10, "dev"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "rapid_rollup"

    const-string v10, "HEAD"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "build_meta"

    invoke-virtual {v5, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v8, "mf"

    sget-object v9, Lcom/google/android/gms/internal/ads/zznk;->zzbbm:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual/range {v9 .. v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static/range {v9 .. v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "instant_app"

    invoke-virtual {v5, v8, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "lite"

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzang;->zzcvh:Z

    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "local_service"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_privileged_process"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "sdk_env"

    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cache_state"

    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4b

    const-string v0, "gct"

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdx:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4c

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdy:Z

    if-eqz v0, :cond_4c

    const-string v0, "de"

    const-string v1, "1"

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzayy:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzarb:Ljava/lang/String;

    const-string v1, "interstitial_mb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "reward_mb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_18

    :cond_4d
    move v0, v14

    goto :goto_19

    :cond_4e
    :goto_18
    move v0, v13

    :goto_19
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcdz:Landroid/os/Bundle;

    if-eqz v1, :cond_4f

    goto :goto_1a

    :cond_4f
    move v13, v14

    :goto_1a
    if-eqz v0, :cond_50

    if-eqz v13, :cond_50

    new-instance v0, Landroid/os/Bundle;

    invoke-direct/range {v0 .. v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "interstitial_pool"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "counters"

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcea:Ljava/lang/String;

    if-eqz v0, :cond_51

    const-string v0, "gmp_app_id"

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcea:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzceb:Ljava/lang/String;

    if-eqz v0, :cond_53

    const-string v0, "TIME_OUT"

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzceb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "sai_timeout"

    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzaxt:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    :goto_1b
    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_52
    const-string v0, "fbs_aiid"

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzceb:Ljava/lang/String;

    goto :goto_1b

    :cond_53
    const-string v0, "fbs_aiid"

    const-string v1, ""

    goto :goto_1b

    :goto_1c
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcec:Ljava/lang/String;

    if-eqz v0, :cond_54

    const-string v0, "fbs_aeid"

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcec:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_55

    const-string v0, "disable_ml"

    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcei:Z

    invoke-static/range {v1 .. v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzavo:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_57

    invoke-virtual/range {v0 .. v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v3, Lcom/google/android/gms/internal/ads/zznk;->zzavp:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual/range {v3 .. v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v1, v3, :cond_57

    new-instance v1, Ljava/util/HashMap;

    invoke-direct/range {v1 .. v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    :goto_1d
    if-ge v14, v3, :cond_56

    aget-object v4, v0, v14

    invoke-static/range {v4 .. v4}, Lcom/google/android/gms/internal/ads/zzams;->zzdd(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_1d

    :cond_56
    const-string v0, "video_decoders"

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbet:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "omid_v"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfa()Lcom/google/android/gms/internal/ads/zzaan;

    move-result-object v1

    move-object/from16 v3, p0

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaan;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcek:Ljava/util/ArrayList;

    if-eqz v0, :cond_59

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcek:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "android_permissions"

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzcek:Ljava/util/ArrayList;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    const/4 v1, 0x2

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzakb;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzakk;->zzn(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad Request JSON: "

    invoke-static/range {v0 .. v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_5a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1e
    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    :cond_5b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzakk;->zzn(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    const-string v1, "Problem serializing ad request to JSON: "

    invoke-virtual/range {v0 .. v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_5c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1f
    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static zza(Ljava/util/HashMap;Landroid/location/Location;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct/range {v0 .. v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static/range {v1 .. v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static/range {v2 .. v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    const-wide v5, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-static/range {v3 .. v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-long v4, v7

    invoke-static/range {v4 .. v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v4, "radius"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lat"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "long"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "time"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "uule"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzaej;)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct/range {v0 .. v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzbyq:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "ad_base_url"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzbyq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcet:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "ad_size"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "native"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzare:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzare:Z

    if-eqz v1, :cond_2

    const-string v1, "ad_json"

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzceo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const-string v1, "ad_html"

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcev:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "debug_dialog"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcev:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcfl:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "debug_signals"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcfl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcep:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    const-string v1, "interstitial_timeout"

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcep:J

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzakq;->zzrm()I

    move-result v2

    if-ne v1, v2, :cond_6

    const-string v1, "orientation"

    const-string v2, "portrait"

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzakq;->zzrl()I

    move-result v2

    if-ne v1, v2, :cond_7

    const-string v1, "orientation"

    const-string v2, "landscape"

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzbsn:Ljava/util/List;

    if-eqz v1, :cond_8

    const-string v1, "click_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzbsn:Ljava/util/List;

    invoke-static/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzafs;->zzm(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzbso:Ljava/util/List;

    if-eqz v1, :cond_9

    const-string v1, "impression_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzbso:Ljava/util/List;

    invoke-static/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzafs;->zzm(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzbsp:Ljava/util/List;

    if-eqz v1, :cond_a

    const-string v1, "downloaded_impression_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzbsp:Ljava/util/List;

    invoke-static/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzafs;->zzm(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzces:Ljava/util/List;

    if-eqz v1, :cond_b

    const-string v1, "manual_impression_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzces:Ljava/util/List;

    invoke-static/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzafs;->zzm(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcey:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v1, "active_view"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    const-string v1, "ad_is_javascript"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcew:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcex:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v1, "ad_passback_url"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcex:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    const-string v1, "mediation"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzceq:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "custom_render_allowed"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcez:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "content_url_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcfa:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "content_vertical_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcfm:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "prefetch"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcfb:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzbsu:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_e

    const-string v1, "refresh_interval_milliseconds"

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzbsu:J

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_e
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcer:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_f

    const-string v1, "mediation_config_cache_time_milliseconds"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcer:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzamj:Ljava/lang/String;

    invoke-static/range {v1 .. v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "gws_query_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzamj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    const-string v1, "fluid"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzarf:Z

    if-eqz v2, :cond_11

    const-string v2, "height"

    goto :goto_4

    :cond_11
    const-string v2, ""

    :goto_4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "native_express"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzarg:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcff:Ljava/util/List;

    if-eqz v1, :cond_12

    const-string v1, "video_start_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcff:Ljava/util/List;

    invoke-static/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzafs;->zzm(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcfg:Ljava/util/List;

    if-eqz v1, :cond_13

    const-string v1, "video_complete_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcfg:Ljava/util/List;

    invoke-static/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzafs;->zzm(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcfe:Lcom/google/android/gms/internal/ads/zzaig;

    if-eqz v1, :cond_14

    const-string v1, "rewards"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcfe:Lcom/google/android/gms/internal/ads/zzaig;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct/range {v3 .. v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "rb_type"

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzaig;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "rb_amount"

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaig;->zzcmk:I

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct/range {v2 .. v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14
    const-string v1, "use_displayed_impression"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcfh:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "auto_protection_configuration"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzcfi:Lcom/google/android/gms/internal/ads/zzael;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "render_in_browser"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzbss:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "disable_closable_area"

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzzm:Z

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static zzm(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct/range {v0 .. v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static zzv(Z)Ljava/lang/Integer;
    .locals 0

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
