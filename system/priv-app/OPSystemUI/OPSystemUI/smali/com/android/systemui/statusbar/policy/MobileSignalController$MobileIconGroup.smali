.class Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
.super Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobileIconGroup"
.end annotation


# instance fields
.field final mActivityId:I

.field final mDataContentDescription:I

.field final mDataType:I

.field final mIsWide:Z

.field final mQsDataType:I

.field final mSingleSignalIcon:I

.field final mStackedDataIcon:I

.field final mStackedVoiceIcon:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;IIIIZZ)V
    .locals 22
    .param p1, "mig"    # Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .param p2, "dataType"    # I
    .param p3, "voiceType"    # I
    .param p4, "voiceLevel"    # I
    .param p5, "dataLevel"    # I
    .param p6, "isRoaming"    # Z
    .param p7, "showLTE"    # Z

    .prologue
    .line 1434
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsIcons:[[I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mContentDesc:[I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbNullState:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsNullState:I

    .line 1435
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbDiscState:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDiscState:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDiscContentDesc:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    .line 1436
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    move/from16 v17, v0

    .line 1437
    move/from16 v0, p2

    move/from16 v1, p5

    move/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getStackedDataIcon(IIZ)I

    move-result v19

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getStackedVoiceIcon(IIZZ)I

    move-result v20

    .line 1436
    const/16 v18, 0x0

    .line 1437
    const/16 v21, 0x0

    move-object/from16 v4, p0

    .line 1434
    invoke-direct/range {v4 .. v21}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZIIIII)V

    .line 1438
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sbIcons"    # [[I
    .param p3, "qsIcons"    # [[I
    .param p4, "contentDesc"    # [I
    .param p5, "sbNullState"    # I
    .param p6, "qsNullState"    # I
    .param p7, "sbDiscState"    # I
    .param p8, "qsDiscState"    # I
    .param p9, "discContentDesc"    # I
    .param p10, "dataContentDesc"    # I
    .param p11, "dataType"    # I
    .param p12, "isWide"    # Z
    .param p13, "qsDataType"    # I

    .prologue
    .line 1412
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    .line 1410
    invoke-direct/range {v0 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZIIIII)V

    .line 1413
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIIIZIIIII)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sbIcons"    # [[I
    .param p3, "qsIcons"    # [[I
    .param p4, "contentDesc"    # [I
    .param p5, "sbNullState"    # I
    .param p6, "qsNullState"    # I
    .param p7, "sbDiscState"    # I
    .param p8, "qsDiscState"    # I
    .param p9, "discContentDesc"    # I
    .param p10, "dataContentDesc"    # I
    .param p11, "dataType"    # I
    .param p12, "isWide"    # Z
    .param p13, "qsDataType"    # I
    .param p14, "singleSignalIcon"    # I
    .param p15, "stackedDataIcon"    # I
    .param p16, "stackedVoicelIcon"    # I
    .param p17, "activityId"    # I

    .prologue
    .line 1420
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    .line 1422
    iput p10, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    .line 1423
    iput p11, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    .line 1424
    iput-boolean p12, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    .line 1425
    iput p13, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    .line 1426
    iput p14, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSingleSignalIcon:I

    .line 1427
    move/from16 v0, p15

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mStackedDataIcon:I

    .line 1428
    move/from16 v0, p16

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mStackedVoiceIcon:I

    .line 1429
    move/from16 v0, p17

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mActivityId:I

    .line 1430
    return-void
.end method
