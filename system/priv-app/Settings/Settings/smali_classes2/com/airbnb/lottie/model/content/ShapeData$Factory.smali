.class public Lcom/airbnb/lottie/model/content/ShapeData$Factory;
.super Ljava/lang/Object;
.source "ShapeData.java"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/ShapeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory",
        "<",
        "Lcom/airbnb/lottie/model/content/ShapeData;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/model/content/ShapeData$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeData$Factory;

    invoke-direct {v0}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->INSTANCE:Lcom/airbnb/lottie/model/content/ShapeData$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method private static vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;
    .locals 6
    .param p0, "idx"    # I
    .param p1, "points"    # Lorg/json/JSONArray;

    .prologue
    const/4 v4, 0x0

    .line 189
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p0, v3, :cond_0

    .line 194
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 195
    .local v0, "pointArray":Lorg/json/JSONArray;
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 196
    .local v1, "x":Ljava/lang/Object;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    .line 197
    .local v2, "y":Ljava/lang/Object;
    new-instance v5, Landroid/graphics/PointF;

    instance-of v3, v1, Ljava/lang/Double;

    if-nez v3, :cond_1

    .line 198
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "x":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    :goto_0
    instance-of v4, v2, Ljava/lang/Double;

    if-nez v4, :cond_2

    .line 199
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "y":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    :goto_1
    invoke-direct {v5, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 197
    return-object v5

    .line 190
    .end local v0    # "pointArray":Lorg/json/JSONArray;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". There are only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 191
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " points."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    .restart local v0    # "pointArray":Lorg/json/JSONArray;
    .restart local v1    # "x":Ljava/lang/Object;
    .restart local v2    # "y":Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/Double;

    .line 198
    .end local v1    # "x":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_0

    :cond_2
    check-cast v2, Ljava/lang/Double;

    .line 199
    .end local v2    # "y":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v4

    goto :goto_1
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/content/ShapeData;
    .locals 26
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "scale"    # F

    .prologue
    .line 112
    const/16 v16, 0x0

    .line 113
    .local v16, "pointsData":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/json/JSONArray;

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 118
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/json/JSONObject;

    move/from16 v21, v0

    if-nez v21, :cond_3

    .line 122
    .end local v16    # "pointsData":Lorg/json/JSONObject;
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v16, :cond_4

    .line 126
    const-string/jumbo v21, "v"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 127
    .local v15, "pointsArray":Lorg/json/JSONArray;
    const-string/jumbo v21, "i"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 128
    .local v11, "inTangents":Lorg/json/JSONArray;
    const-string/jumbo v21, "o"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 129
    .local v14, "outTangents":Lorg/json/JSONArray;
    const-string/jumbo v21, "c"

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 131
    .local v5, "closed":Z
    if-nez v15, :cond_5

    .line 134
    :cond_1
    new-instance v21, Ljava/lang/IllegalStateException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Unable to process points array or tangents. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 114
    .end local v5    # "closed":Z
    .end local v11    # "inTangents":Lorg/json/JSONArray;
    .end local v14    # "outTangents":Lorg/json/JSONArray;
    .end local v15    # "pointsArray":Lorg/json/JSONArray;
    .restart local v16    # "pointsData":Lorg/json/JSONObject;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "object":Ljava/lang/Object;
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v9

    .line 115
    .local v9, "firstObject":Ljava/lang/Object;
    instance-of v0, v9, Lorg/json/JSONObject;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v21, v9

    check-cast v21, Lorg/json/JSONObject;

    const-string/jumbo v22, "v"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v16, v9

    .line 116
    check-cast v16, Lorg/json/JSONObject;

    goto :goto_0

    .end local v9    # "firstObject":Ljava/lang/Object;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    move-object/from16 v21, p1

    .line 118
    check-cast v21, Lorg/json/JSONObject;

    const-string/jumbo v22, "v"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v16, p1

    .line 119
    check-cast v16, Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 123
    .end local v16    # "pointsData":Lorg/json/JSONObject;
    .end local p1    # "object":Ljava/lang/Object;
    :cond_4
    const/16 v21, 0x0

    return-object v21

    .line 131
    .restart local v5    # "closed":Z
    .restart local v11    # "inTangents":Lorg/json/JSONArray;
    .restart local v14    # "outTangents":Lorg/json/JSONArray;
    .restart local v15    # "pointsArray":Lorg/json/JSONArray;
    :cond_5
    if-eqz v11, :cond_1

    if-eqz v14, :cond_1

    .line 132
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v21

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 133
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v21

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 136
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v21

    if-eqz v21, :cond_6

    .line 140
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 141
    .local v13, "length":I
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v0, v15}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v20

    .line 142
    .local v20, "vertex":Landroid/graphics/PointF;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 143
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 144
    move-object/from16 v12, v20

    .line 145
    .local v12, "initialPoint":Landroid/graphics/PointF;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v8, "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/CubicCurveData;>;"
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1
    if-lt v10, v13, :cond_7

    .line 165
    if-nez v5, :cond_8

    .line 185
    :goto_2
    new-instance v21, Lcom/airbnb/lottie/model/content/ShapeData;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v12, v5, v8, v1}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;Lcom/airbnb/lottie/model/content/ShapeData$1;)V

    return-object v21

    .line 137
    .end local v8    # "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/CubicCurveData;>;"
    .end local v10    # "i":I
    .end local v12    # "initialPoint":Landroid/graphics/PointF;
    .end local v13    # "length":I
    .end local v20    # "vertex":Landroid/graphics/PointF;
    :cond_6
    new-instance v21, Lcom/airbnb/lottie/model/content/ShapeData;

    new-instance v22, Landroid/graphics/PointF;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/PointF;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v24

    move-object/from16 v3, v23

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;Lcom/airbnb/lottie/model/content/ShapeData$1;)V

    return-object v21

    .line 148
    .restart local v8    # "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/CubicCurveData;>;"
    .restart local v10    # "i":I
    .restart local v12    # "initialPoint":Landroid/graphics/PointF;
    .restart local v13    # "length":I
    .restart local v20    # "vertex":Landroid/graphics/PointF;
    :cond_7
    invoke-static {v10, v15}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v20

    .line 149
    add-int/lit8 v21, v10, -0x1

    move/from16 v0, v21

    invoke-static {v0, v15}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v17

    .line 150
    .local v17, "previousVertex":Landroid/graphics/PointF;
    add-int/lit8 v21, v10, -0x1

    move/from16 v0, v21

    invoke-static {v0, v14}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v6

    .line 151
    .local v6, "cp1":Landroid/graphics/PointF;
    invoke-static {v10, v11}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v7

    .line 152
    .local v7, "cp2":Landroid/graphics/PointF;
    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v18

    .line 153
    .local v18, "shapeCp1":Landroid/graphics/PointF;
    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v19

    .line 155
    .local v19, "shapeCp2":Landroid/graphics/PointF;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 156
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 157
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 158
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 159
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 160
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 162
    new-instance v21, Lcom/airbnb/lottie/model/CubicCurveData;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 166
    .end local v6    # "cp1":Landroid/graphics/PointF;
    .end local v7    # "cp2":Landroid/graphics/PointF;
    .end local v17    # "previousVertex":Landroid/graphics/PointF;
    .end local v18    # "shapeCp1":Landroid/graphics/PointF;
    .end local v19    # "shapeCp2":Landroid/graphics/PointF;
    :cond_8
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v0, v15}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v20

    .line 167
    add-int/lit8 v21, v13, -0x1

    move/from16 v0, v21

    invoke-static {v0, v15}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v17

    .line 168
    .restart local v17    # "previousVertex":Landroid/graphics/PointF;
    add-int/lit8 v21, v13, -0x1

    move/from16 v0, v21

    invoke-static {v0, v14}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v6

    .line 169
    .restart local v6    # "cp1":Landroid/graphics/PointF;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v0, v11}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v7

    .line 171
    .restart local v7    # "cp2":Landroid/graphics/PointF;
    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v18

    .line 172
    .restart local v18    # "shapeCp1":Landroid/graphics/PointF;
    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v19

    .line 174
    .restart local v19    # "shapeCp2":Landroid/graphics/PointF;
    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v21, p2, v21

    if-eqz v21, :cond_9

    .line 175
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 176
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 177
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 178
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 179
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 180
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 183
    :cond_9
    new-instance v21, Lcom/airbnb/lottie/model/CubicCurveData;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/content/ShapeData$Factory;->valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/content/ShapeData;

    move-result-object v0

    return-object v0
.end method
