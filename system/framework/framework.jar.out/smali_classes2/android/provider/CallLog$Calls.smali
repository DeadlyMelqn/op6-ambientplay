.class public Landroid/provider/CallLog$Calls;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final ADD_FOR_ALL_USERS:Ljava/lang/String; = "add_for_all_users"

.field public static final ALLOW_VOICEMAILS_PARAM_KEY:Ljava/lang/String; = "allow_voicemails"

.field public static final ANSWERED_EXTERNALLY_TYPE:I = 0x7

.field public static final BLOCKED_TYPE:I = 0x6

.field public static final CACHED_FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final CACHED_LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final CACHED_MATCHED_NUMBER:Ljava/lang/String; = "matched_number"

.field public static final CACHED_NAME:Ljava/lang/String; = "name"

.field public static final CACHED_NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final CACHED_PHOTO_URI:Ljava/lang/String; = "photo_uri"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/calls"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

.field public static final COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final DATA_USAGE:Ljava/lang/String; = "data_usage"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final EXTRA_CALL_TYPE_FILTER:Ljava/lang/String; = "android.provider.extra.CALL_TYPE_FILTER"

.field public static final FEATURES:Ljava/lang/String; = "features"

.field public static final FEATURES_HD_CALL:I = 0x4

.field public static final FEATURES_PULLED_EXTERNALLY:I = 0x2

.field public static final FEATURES_VIDEO:I = 0x1

.field public static final FEATURES_WIFI:I = 0x8

.field public static final GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final INCOMING_IMS_TYPE:I = 0x3e8

.field public static final INCOMING_TYPE:I = 0x1

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field private static final MIN_DURATION_FOR_NORMALIZED_NUMBER_UPDATE_MS:I = 0x2710

.field public static final MISSED_IMS_TYPE:I = 0x3ea

.field public static final MISSED_TYPE:I = 0x3

.field public static final NEW:Ljava/lang/String; = "new"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_PRESENTATION:Ljava/lang/String; = "presentation"

.field public static final OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final OUTGOING_IMS_TYPE:I = 0x3e9

.field public static final OUTGOING_TYPE:I = 0x2

.field public static final PHONE_ACCOUNT_ADDRESS:Ljava/lang/String; = "phone_account_address"

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final PHONE_ACCOUNT_HIDDEN:Ljava/lang/String; = "phone_account_hidden"

.field public static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final POST_DIAL_DIGITS:Ljava/lang/String; = "post_dial_digits"

.field public static final PRESENTATION_ALLOWED:I = 0x1

.field public static final PRESENTATION_PAYPHONE:I = 0x4

.field public static final PRESENTATION_RESTRICTED:I = 0x2

.field public static final PRESENTATION_UNKNOWN:I = 0x3

.field public static final REJECTED_TYPE:I = 0x5

.field public static final SHADOW_CONTENT_URI:Landroid/net/Uri;

.field public static final SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final TRANSCRIPTION:Ljava/lang/String; = "transcription"

.field public static final TRANSCRIPTION_STATE:Ljava/lang/String; = "transcription_state"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VIA_NUMBER:Ljava/lang/String; = "via_number"

.field public static final VOICEMAIL_TYPE:I = 0x4

.field public static final VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    const-string/jumbo v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 84
    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 89
    const-string/jumbo v0, "content://call_log_shadow/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    sput-object v0, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    .line 95
    const-string/jumbo v0, "content://call_log/calls/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 94
    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 151
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 152
    const-string/jumbo v1, "allow_voicemails"

    const-string/jumbo v2, "true"

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;)Landroid/net/Uri;
    .locals 17
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;

    .prologue
    .line 543
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    .line 545
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 546
    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move-object/from16 v13, p10

    .line 543
    invoke-static/range {v1 .. v16}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;)Landroid/net/Uri;
    .locals 17
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "postDialDigits"    # Ljava/lang/String;
    .param p4, "viaNumber"    # Ljava/lang/String;
    .param p5, "presentation"    # I
    .param p6, "callType"    # I
    .param p7, "features"    # I
    .param p8, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p9, "start"    # J
    .param p11, "duration"    # I
    .param p12, "dataUsage"    # Ljava/lang/Long;
    .param p13, "addForAllUsers"    # Z
    .param p14, "userToBeInsertedTo"    # Landroid/os/UserHandle;

    .prologue
    .line 584
    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    .line 582
    invoke-static/range {v1 .. v16}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;Z)Landroid/net/Uri;
    .locals 41
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "postDialDigits"    # Ljava/lang/String;
    .param p4, "viaNumber"    # Ljava/lang/String;
    .param p5, "presentation"    # I
    .param p6, "callType"    # I
    .param p7, "features"    # I
    .param p8, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p9, "start"    # J
    .param p11, "duration"    # I
    .param p12, "dataUsage"    # Ljava/lang/Long;
    .param p13, "addForAllUsers"    # Z
    .param p14, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p15, "is_read"    # Z

    .prologue
    .line 630
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 631
    .local v4, "resolver":Landroid/content/ContentResolver;
    const/16 v24, 0x1

    .line 633
    .local v24, "numberPresentation":I
    const/16 v28, 0x0

    .line 635
    .local v28, "tm":Landroid/telecom/TelecomManager;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v28

    .line 638
    .end local v28    # "tm":Landroid/telecom/TelecomManager;
    :goto_0
    const/4 v11, 0x0

    .line 639
    .local v11, "accountAddress":Ljava/lang/String;
    if-eqz v28, :cond_0

    if-eqz p8, :cond_0

    .line 640
    move-object/from16 v0, v28

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v10

    .line 641
    .local v10, "account":Landroid/telecom/PhoneAccount;
    if-eqz v10, :cond_0

    .line 642
    invoke-virtual {v10}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v14

    .line 643
    .local v14, "address":Landroid/net/Uri;
    if-eqz v14, :cond_0

    .line 644
    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    .line 654
    .end local v10    # "account":Landroid/telecom/PhoneAccount;
    .end local v11    # "accountAddress":Ljava/lang/String;
    .end local v14    # "address":Landroid/net/Uri;
    :cond_0
    const/4 v5, 0x2

    move/from16 v0, p5

    if-ne v0, v5, :cond_e

    .line 655
    const/16 v24, 0x2

    .line 662
    :cond_1
    :goto_1
    const/4 v5, 0x1

    move/from16 v0, v24

    if-eq v0, v5, :cond_2

    .line 663
    const-string/jumbo p2, ""

    .line 664
    if-eqz p0, :cond_2

    .line 665
    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 670
    :cond_2
    const/4 v12, 0x0

    .line 671
    .local v12, "accountComponentString":Ljava/lang/String;
    const/4 v13, 0x0

    .line 672
    .local v13, "accountId":Ljava/lang/String;
    if-eqz p8, :cond_3

    .line 673
    invoke-virtual/range {p8 .. p8}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    .line 674
    .local v12, "accountComponentString":Ljava/lang/String;
    invoke-virtual/range {p8 .. p8}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v13

    .line 677
    .end local v12    # "accountComponentString":Ljava/lang/String;
    .end local v13    # "accountId":Ljava/lang/String;
    :cond_3
    new-instance v36, Landroid/content/ContentValues;

    const/4 v5, 0x6

    move-object/from16 v0, v36

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 682
    .local v36, "values":Landroid/content/ContentValues;
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Landroid/provider/CallLog;->-wrap0(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 686
    :goto_2
    if-eqz p0, :cond_6

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 688
    const-string/jumbo v13, "oneplus_emergency"

    .line 691
    :cond_4
    const-string/jumbo v5, "name"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    if-eqz v5, :cond_5

    .line 694
    const-string/jumbo v5, "photo_uri"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string/jumbo v5, "photo_id"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->lookupKey:Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_6

    .line 698
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->lookupKey:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 699
    .local v22, "lookupUri":Landroid/net/Uri;
    if-eqz v22, :cond_6

    .line 700
    const-string/jumbo v5, "lookup_uri"

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    .end local v22    # "lookupUri":Landroid/net/Uri;
    :cond_6
    const-string/jumbo v5, "number"

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string/jumbo v5, "post_dial_digits"

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string/jumbo v5, "via_number"

    move-object/from16 v0, v36

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string/jumbo v5, "presentation"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 710
    const-string/jumbo v5, "type"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 711
    const-string/jumbo v5, "features"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 712
    const-string/jumbo v5, "date"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 713
    const-string/jumbo v5, "duration"

    move/from16 v0, p11

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 714
    if-eqz p12, :cond_7

    .line 715
    const-string/jumbo v5, "data_usage"

    move-object/from16 v0, v36

    move-object/from16 v1, p12

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 717
    :cond_7
    const-string/jumbo v5, "subscription_component_name"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string/jumbo v5, "subscription_id"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string/jumbo v5, "phone_account_address"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string/jumbo v5, "new"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    const-string/jumbo v6, "add_for_all_users"

    if-eqz p13, :cond_11

    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 723
    const/4 v5, 0x3

    move/from16 v0, p6

    if-eq v0, v5, :cond_8

    const/16 v5, 0x3ea

    move/from16 v0, p6

    if-ne v0, v5, :cond_9

    .line 724
    :cond_8
    const-string/jumbo v6, "is_read"

    if-eqz p15, :cond_12

    const/4 v5, 0x1

    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 727
    :cond_9
    if-eqz p0, :cond_c

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_c

    .line 736
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v5, :cond_13

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 738
    .local v23, "normalizedPhoneNumber":Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 739
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "_id"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 740
    const-string/jumbo v7, "contact_id =? AND data4 =?"

    .line 741
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/16 v37, 0x0

    aput-object v9, v8, v37

    .line 742
    const/4 v9, 0x1

    aput-object v23, v8, v9

    .line 743
    const/4 v9, 0x0

    .line 738
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 755
    .end local v23    # "normalizedPhoneNumber":Ljava/lang/String;
    .local v17, "cursor":Landroid/database/Cursor;
    :goto_5
    if-eqz v17, :cond_c

    .line 757
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_b

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 758
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 759
    .local v18, "dataId":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/provider/CallLog$Calls;->updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 760
    const/16 v5, 0x2710

    move/from16 v0, p11

    if-lt v0, v5, :cond_b

    .line 761
    const/4 v5, 0x2

    move/from16 v0, p6

    if-eq v0, v5, :cond_a

    .line 762
    const/16 v5, 0x3e9

    move/from16 v0, p6

    if-ne v0, v5, :cond_b

    .line 763
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 760
    if-eqz v5, :cond_b

    .line 764
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v4, v1, v2}, Landroid/provider/CallLog$Calls;->updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 768
    .end local v18    # "dataId":Ljava/lang/String;
    :cond_b
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 795
    .end local v17    # "cursor":Landroid/database/Cursor;
    :cond_c
    const/16 v26, 0x0

    .line 797
    .local v26, "result":Landroid/net/Uri;
    const-class v5, Landroid/os/UserManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/os/UserManager;

    .line 798
    .local v34, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v34 .. v34}, Landroid/os/UserManager;->getUserHandle()I

    move-result v16

    .line 800
    .local v16, "currentUserId":I
    if-eqz p13, :cond_19

    .line 803
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 802
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-static {v0, v1, v5, v2}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v30

    .line 804
    .local v30, "uriForSystem":Landroid/net/Uri;
    if-eqz v30, :cond_d

    .line 805
    const-string/jumbo v5, "call_log_shadow"

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 804
    if-eqz v5, :cond_15

    .line 809
    :cond_d
    const/4 v5, 0x0

    return-object v5

    .line 636
    .end local v16    # "currentUserId":I
    .end local v26    # "result":Landroid/net/Uri;
    .end local v30    # "uriForSystem":Landroid/net/Uri;
    .end local v34    # "userManager":Landroid/os/UserManager;
    .end local v36    # "values":Landroid/content/ContentValues;
    .restart local v28    # "tm":Landroid/telecom/TelecomManager;
    :catch_0
    move-exception v20

    .local v20, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_0

    .line 656
    .end local v20    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v28    # "tm":Landroid/telecom/TelecomManager;
    :cond_e
    const/4 v5, 0x4

    move/from16 v0, p5

    if-ne v0, v5, :cond_f

    .line 657
    const/16 v24, 0x4

    goto/16 :goto_1

    .line 658
    :cond_f
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 659
    const/4 v5, 0x3

    move/from16 v0, p5

    if-ne v0, v5, :cond_1

    .line 660
    :cond_10
    const/16 v24, 0x3

    goto/16 :goto_1

    .line 721
    .restart local v36    # "values":Landroid/content/ContentValues;
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 724
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 745
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 747
    .local v25, "phoneNumber":Ljava/lang/String;
    :goto_6
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 748
    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 747
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 749
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "_id"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 750
    const-string/jumbo v7, "contact_id =?"

    .line 751
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/16 v37, 0x0

    aput-object v9, v8, v37

    .line 752
    const/4 v9, 0x0

    .line 746
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .restart local v17    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_5

    .line 745
    .end local v17    # "cursor":Landroid/database/Cursor;
    .end local v25    # "phoneNumber":Ljava/lang/String;
    :cond_14
    move-object/from16 v25, p2

    .restart local v25    # "phoneNumber":Ljava/lang/String;
    goto :goto_6

    .line 767
    .end local v25    # "phoneNumber":Ljava/lang/String;
    .restart local v17    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    .line 768
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 767
    throw v5

    .line 811
    .end local v17    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "currentUserId":I
    .restart local v26    # "result":Landroid/net/Uri;
    .restart local v30    # "uriForSystem":Landroid/net/Uri;
    .restart local v34    # "userManager":Landroid/os/UserManager;
    :cond_15
    if-nez v16, :cond_16

    .line 812
    move-object/from16 v26, v30

    .line 817
    .end local v26    # "result":Landroid/net/Uri;
    :cond_16
    const/4 v5, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v35

    .line 819
    .local v35, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v15

    .line 820
    .local v15, "count":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_7
    move/from16 v0, v21

    if-ge v0, v15, :cond_1a

    .line 821
    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/UserInfo;

    .line 822
    .local v33, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v31

    .line 823
    .local v31, "userHandle":Landroid/os/UserHandle;
    invoke-virtual/range {v31 .. v31}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v32

    .line 825
    .local v32, "userId":I
    invoke-virtual/range {v31 .. v31}, Landroid/os/UserHandle;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 820
    :cond_17
    :goto_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 830
    :cond_18
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/provider/CallLog$Calls;->shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 838
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 839
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v5

    .line 838
    if-eqz v5, :cond_17

    .line 840
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v31

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v29

    .line 842
    .local v29, "uri":Landroid/net/Uri;
    move/from16 v0, v32

    move/from16 v1, v16

    if-ne v0, v1, :cond_17

    .line 843
    move-object/from16 v26, v29

    .local v26, "result":Landroid/net/Uri;
    goto :goto_8

    .line 851
    .end local v15    # "count":I
    .end local v21    # "i":I
    .end local v29    # "uri":Landroid/net/Uri;
    .end local v30    # "uriForSystem":Landroid/net/Uri;
    .end local v31    # "userHandle":Landroid/os/UserHandle;
    .end local v32    # "userId":I
    .end local v33    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v35    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v26, "result":Landroid/net/Uri;
    :cond_19
    if-eqz p14, :cond_1b

    .line 852
    move-object/from16 v27, p14

    .line 854
    .local v27, "targetUserHandle":Landroid/os/UserHandle;
    :goto_9
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v26

    .line 857
    .end local v26    # "result":Landroid/net/Uri;
    .end local v27    # "targetUserHandle":Landroid/os/UserHandle;
    :cond_1a
    return-object v26

    .line 853
    .restart local v26    # "result":Landroid/net/Uri;
    :cond_1b
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v27

    .restart local v27    # "targetUserHandle":Landroid/os/UserHandle;
    goto :goto_9

    .line 683
    .end local v16    # "currentUserId":I
    .end local v26    # "result":Landroid/net/Uri;
    .end local v27    # "targetUserHandle":Landroid/os/UserHandle;
    .end local v34    # "userManager":Landroid/os/UserManager;
    :catch_1
    move-exception v19

    .local v19, "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method private static addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x0

    .line 898
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 903
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 904
    :goto_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 902
    invoke-static {v4, v5}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    .line 917
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v1, v3, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 918
    .local v2, "result":Landroid/net/Uri;
    const-string/jumbo v4, "subscription_id"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 919
    const-string/jumbo v4, "subscription_id"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 918
    if-eqz v4, :cond_1

    .line 920
    const-string/jumbo v4, "subscription_component_name"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    .line 918
    if-eqz v4, :cond_1

    .line 921
    const-string/jumbo v4, "subscription_component_name"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 918
    if-eqz v4, :cond_1

    .line 923
    const-string/jumbo v4, "_id IN (SELECT _id FROM calls WHERE subscription_component_name = ? AND subscription_id = ? ORDER BY date DESC LIMIT -1 OFFSET 500)"

    .line 928
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 929
    const-string/jumbo v6, "subscription_component_name"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 930
    const-string/jumbo v6, "subscription_id"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 923
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    :goto_1
    return-object v2

    .line 903
    .end local v2    # "result":Landroid/net/Uri;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    sget-object v4, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 934
    .restart local v2    # "result":Landroid/net/Uri;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string/jumbo v4, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 500)"

    .line 936
    const/4 v5, 0x0

    .line 934
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 940
    .end local v2    # "result":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "CallLog"

    const-string/jumbo v5, "Failed to insert calllog"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 945
    return-object v8
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 982
    const/4 v1, 0x0

    .line 984
    .local v1, "countryIso":Ljava/lang/String;
    const-string/jumbo v3, "country_detector"

    .line 983
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 985
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    .line 986
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 987
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 991
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 878
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 879
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 882
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 883
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "number"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 884
    const-string/jumbo v3, "type = 2 OR type = 1001"

    .line 886
    const-string/jumbo v5, "date DESC LIMIT 1"

    .line 885
    const/4 v4, 0x0

    .line 881
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 887
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 888
    :cond_0
    const-string/jumbo v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 888
    :cond_1
    return-object v1

    .line 890
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 892
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 890
    :cond_3
    return-object v1

    .line 891
    .end local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 892
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 891
    :cond_4
    throw v1
.end method

.method public static shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 863
    const-string/jumbo v2, "no_outgoing_calls"

    .line 864
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 863
    invoke-virtual {p1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 865
    return v1

    .line 867
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 868
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :cond_1
    return v1
.end method

.method private static updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "dataId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 950
    sget-object v1, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 952
    const-string/jumbo v2, "type"

    .line 953
    const-string/jumbo v3, "call"

    .line 950
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 955
    .local v0, "feedbackUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 956
    return-void
.end method

.method private static updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 964
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 965
    :cond_0
    return-void

    .line 967
    :cond_1
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 969
    return-void

    .line 972
    :cond_2
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 971
    invoke-static {p3, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 973
    .local v1, "normalizedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 974
    return-void

    .line 976
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 977
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "data4"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 979
    return-void
.end method
