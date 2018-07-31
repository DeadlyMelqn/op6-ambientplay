.class public Lcom/android/server/notification/CalendarTracker;
.super Ljava/lang/Object;
.source "CalendarTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/CalendarTracker$1;,
        Lcom/android/server/notification/CalendarTracker$Callback;,
        Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    }
.end annotation


# static fields
.field private static final ATTENDEE_PROJECTION:[Ljava/lang/String;

.field private static final ATTENDEE_SELECTION:Ljava/lang/String; = "event_id = ? AND attendeeEmail = ?"

.field private static final DEBUG:Z

.field private static final DEBUG_ATTENDEES:Z = false

.field private static final EVENT_CHECK_LOOKAHEAD:I = 0x5265c00

.field private static final INSTANCE_ORDER_BY:Ljava/lang/String; = "begin ASC"

.field private static final INSTANCE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.CT"


# instance fields
.field private mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mRegistered:Z

.field private final mSystemContext:Landroid/content/Context;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/notification/CalendarTracker;)Lcom/android/server/notification/CalendarTracker$Callback;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/notification/CalendarTracker;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/notification/CalendarTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/notification/CalendarTracker;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 41
    const-string/jumbo v0, "ConditionProviders"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    .line 46
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "begin"

    aput-object v1, v0, v4

    .line 48
    const-string/jumbo v1, "end"

    aput-object v1, v0, v5

    .line 49
    const-string/jumbo v1, "title"

    aput-object v1, v0, v6

    .line 50
    const-string/jumbo v1, "visible"

    aput-object v1, v0, v3

    .line 51
    const-string/jumbo v1, "event_id"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "calendar_displayName"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "ownerAccount"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "calendar_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "availability"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 46
    sput-object v0, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    .line 60
    new-array v0, v3, [Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "event_id"

    aput-object v1, v0, v4

    .line 62
    const-string/jumbo v1, "attendeeEmail"

    aput-object v1, v0, v5

    .line 63
    const-string/jumbo v1, "attendeeStatus"

    aput-object v1, v0, v6

    .line 60
    sput-object v0, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 2
    .param p1, "systemContext"    # Landroid/content/Context;
    .param p2, "userContext"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance v0, Lcom/android/server/notification/CalendarTracker$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/CalendarTracker$1;-><init>(Lcom/android/server/notification/CalendarTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    .line 76
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method private static attendeeStatusToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # I

    .prologue
    .line 237
    packed-switch p0, :pswitch_data_0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ATTENDEE_STATUS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :pswitch_0
    const-string/jumbo v0, "ATTENDEE_STATUS_NONE"

    return-object v0

    .line 239
    :pswitch_1
    const-string/jumbo v0, "ATTENDEE_STATUS_ACCEPTED"

    return-object v0

    .line 240
    :pswitch_2
    const-string/jumbo v0, "ATTENDEE_STATUS_DECLINED"

    return-object v0

    .line 241
    :pswitch_3
    const-string/jumbo v0, "ATTENDEE_STATUS_INVITED"

    return-object v0

    .line 242
    :pswitch_4
    const-string/jumbo v0, "ATTENDEE_STATUS_TENTATIVE"

    return-object v0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static availabilityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "availability"    # I

    .prologue
    .line 248
    packed-switch p0, :pswitch_data_0

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AVAILABILITY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 249
    :pswitch_0
    const-string/jumbo v0, "AVAILABILITY_BUSY"

    return-object v0

    .line 250
    :pswitch_1
    const-string/jumbo v0, "AVAILABILITY_FREE"

    return-object v0

    .line 251
    :pswitch_2
    const-string/jumbo v0, "AVAILABILITY_TENTATIVE"

    return-object v0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPrimaryCalendars()Landroid/util/ArraySet;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 94
    .local v12, "start":J
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 95
    .local v9, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string/jumbo v8, "\"primary\""

    .line 96
    .local v8, "primary":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v1

    .line 97
    const-string/jumbo v0, "(account_name=ownerAccount) AS \"primary\""

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 98
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v10, "\"primary\" = 1"

    .line 99
    .local v10, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 101
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 102
    const-string/jumbo v3, "\"primary\" = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 101
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 103
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 110
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    if-eqz v6, :cond_0

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 118
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_1
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ConditionProviders.CT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPrimaryCalendars took "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    return-object v9

    .line 114
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    if-eqz v6, :cond_0

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 113
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 114
    if-eqz v6, :cond_3

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_3
    throw v0
.end method

.method private meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z
    .locals 20
    .param p1, "filter"    # Landroid/service/notification/ZenModeConfig$EventInfo;
    .param p2, "eventId"    # I
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 182
    .local v16, "start":J
    const-string/jumbo v5, "event_id = ? AND attendeeEmail = ?"

    .line 183
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    const/4 v2, 0x1

    aput-object p3, v6, v2

    .line 188
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 189
    sget-object v4, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    .line 188
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 191
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 192
    :cond_0
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ConditionProviders.CT"

    const-string/jumbo v3, "No attendees found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_1
    const/4 v2, 0x1

    .line 211
    if-eqz v8, :cond_2

    .line 212
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_2
    sget-boolean v3, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "ConditionProviders.CT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "meetsAttendee took "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v16

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_3
    return v2

    .line 195
    :cond_4
    const/4 v14, 0x0

    .line 196
    :goto_0
    if-eqz v8, :cond_7

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 197
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 198
    .local v12, "rowEventId":J
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 199
    .local v11, "rowEmail":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 200
    .local v15, "status":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v2, v15}, Lcom/android/server/notification/CalendarTracker;->meetsReply(II)Z

    move-result v10

    .line 201
    .local v10, "meetsReply":Z
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "ConditionProviders.CT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    const-string/jumbo v4, ""

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 203
    const-string/jumbo v4, "status=%s, meetsReply=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 204
    invoke-static {v15}, Lcom/android/server/notification/CalendarTracker;->attendeeStatusToString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v7, v19

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v7, v19

    .line 203
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_5
    move/from16 v0, p2

    int-to-long v2, v0

    cmp-long v2, v12, v2

    if-nez v2, :cond_6

    move-object/from16 v0, p3

    invoke-static {v11, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    .line 206
    move v9, v10

    .line 207
    :goto_1
    or-int/2addr v14, v9

    .local v14, "rt":Z
    goto :goto_0

    .line 205
    .end local v14    # "rt":Z
    :cond_6
    const/4 v9, 0x0

    .local v9, "eventMeets":Z
    goto :goto_1

    .line 211
    .end local v9    # "eventMeets":Z
    .end local v10    # "meetsReply":Z
    .end local v11    # "rowEmail":Ljava/lang/String;
    .end local v12    # "rowEventId":J
    .end local v15    # "status":I
    :cond_7
    if-eqz v8, :cond_8

    .line 212
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_8
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "ConditionProviders.CT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "meetsAttendee took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v16

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_9
    return v14

    .line 210
    :catchall_0
    move-exception v2

    .line 211
    if-eqz v8, :cond_a

    .line 212
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_a
    sget-boolean v3, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v3, :cond_b

    const-string/jumbo v3, "ConditionProviders.CT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "meetsAttendee took "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v16

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_b
    throw v2
.end method

.method private static meetsReply(II)Z
    .locals 3
    .param p0, "reply"    # I
    .param p1, "attendeeStatus"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 257
    packed-switch p0, :pswitch_data_0

    .line 266
    return v1

    .line 259
    :pswitch_0
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 261
    :pswitch_1
    if-eq p1, v0, :cond_1

    .line 262
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 261
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 262
    goto :goto_1

    .line 264
    :pswitch_2
    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    :goto_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRegistered(Z)V
    .locals 6
    .param p1, "registered"    # Z

    .prologue
    const/4 v5, 0x1

    .line 219
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-ne v2, p1, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 221
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 222
    .local v1, "userId":I
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz v2, :cond_2

    .line 223
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ConditionProviders.CT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregister content observer u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 226
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    .line 227
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ConditionProviders.CT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRegistered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz v2, :cond_5

    .line 229
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "ConditionProviders.CT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register content observer u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_4
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v5, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 231
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v5, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 232
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v5, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 234
    :cond_5
    return-void
.end method


# virtual methods
.method public checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .locals 32
    .param p1, "filter"    # Landroid/service/notification/ZenModeConfig$EventInfo;
    .param p2, "time"    # J

    .prologue
    .line 123
    sget-object v4, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v30

    .line 124
    .local v30, "uriBuilder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v30

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 125
    const-wide/32 v6, 0x5265c00

    add-long v6, v6, p2

    move-object/from16 v0, v30

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 126
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 127
    .local v5, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    .line 128
    const-string/jumbo v9, "begin ASC"

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 127
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 129
    .local v17, "cursor":Landroid/database/Cursor;
    new-instance v28, Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    invoke-direct/range {v28 .. v28}, Lcom/android/server/notification/CalendarTracker$CheckEventResult;-><init>()V

    .line 130
    .local v28, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    const-wide/32 v6, 0x5265c00

    add-long v6, v6, p2

    move-object/from16 v0, v28

    iput-wide v6, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 132
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/CalendarTracker;->getPrimaryCalendars()Landroid/util/ArraySet;

    move-result-object v27

    .line 133
    .local v27, "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    if-eqz v17, :cond_d

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 134
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 135
    .local v12, "begin":J
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 136
    .local v18, "end":J
    const/4 v4, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 137
    .local v29, "title":Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    const/16 v16, 0x1

    .line 138
    .local v16, "calendarVisible":Z
    :goto_1
    const/4 v4, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 139
    .local v20, "eventId":I
    const/4 v4, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 140
    .local v25, "name":Ljava/lang/String;
    const/4 v4, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 141
    .local v26, "owner":Ljava/lang/String;
    const/4 v4, 0x7

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 142
    .local v14, "calendarId":J
    const/16 v4, 0x8

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 143
    .local v10, "availability":I
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 144
    .local v11, "calendarPrimary":Z
    sget-boolean v4, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "ConditionProviders.CT"

    .line 145
    const-string/jumbo v6, "%s %s-%s v=%s a=%s eid=%s n=%s o=%s cid=%s p=%s"

    .line 144
    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    .line 146
    const/4 v8, 0x0

    aput-object v29, v7, v8

    .line 147
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v12, v13}, Ljava/util/Date;-><init>(J)V

    const/4 v9, 0x1

    aput-object v8, v7, v9

    new-instance v8, Ljava/util/Date;

    move-wide/from16 v0, v18

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 148
    invoke-static {v10}, Lcom/android/server/notification/CalendarTracker;->availabilityToString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    const/4 v8, 0x6

    aput-object v25, v7, v8

    const/4 v8, 0x7

    aput-object v26, v7, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x8

    aput-object v8, v7, v9

    .line 149
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/16 v9, 0x9

    aput-object v8, v7, v9

    .line 144
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    cmp-long v4, p2, v12

    if-ltz v4, :cond_8

    cmp-long v4, p2, v18

    if-gez v4, :cond_8

    const/16 v24, 0x1

    .line 151
    .local v24, "meetsTime":Z
    :goto_2
    if-eqz v16, :cond_a

    if-eqz v11, :cond_a

    .line 152
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    if-eqz v4, :cond_9

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 153
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v23

    .line 154
    :goto_3
    const/4 v4, 0x1

    if-eq v10, v4, :cond_b

    const/16 v22, 0x1

    .line 155
    .local v22, "meetsAvailability":Z
    :goto_4
    if-eqz v23, :cond_0

    if-eqz v22, :cond_0

    .line 156
    sget-boolean v4, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "ConditionProviders.CT"

    const-string/jumbo v6, "  MEETS CALENDAR & AVAILABILITY"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/CalendarTracker;->meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z

    move-result v21

    .line 158
    .local v21, "meetsAttendee":Z
    if-eqz v21, :cond_0

    .line 159
    sget-boolean v4, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "ConditionProviders.CT"

    const-string/jumbo v6, "    MEETS ATTENDEE"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_3
    if-eqz v24, :cond_5

    .line 161
    sget-boolean v4, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "ConditionProviders.CT"

    const-string/jumbo v6, "      MEETS TIME"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    .line 164
    :cond_5
    cmp-long v4, v12, p2

    if-lez v4, :cond_c

    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v4, v12, v6

    if-gez v4, :cond_c

    .line 165
    move-object/from16 v0, v28

    iput-wide v12, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 172
    .end local v10    # "availability":I
    .end local v11    # "calendarPrimary":Z
    .end local v12    # "begin":J
    .end local v14    # "calendarId":J
    .end local v16    # "calendarVisible":Z
    .end local v18    # "end":J
    .end local v20    # "eventId":I
    .end local v21    # "meetsAttendee":Z
    .end local v22    # "meetsAvailability":Z
    .end local v24    # "meetsTime":Z
    .end local v25    # "name":Ljava/lang/String;
    .end local v26    # "owner":Ljava/lang/String;
    .end local v27    # "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v29    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 173
    if-eqz v17, :cond_6

    .line 174
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_6
    throw v4

    .line 137
    .restart local v12    # "begin":J
    .restart local v18    # "end":J
    .restart local v27    # "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v29    # "title":Ljava/lang/String;
    :cond_7
    const/16 v16, 0x0

    .restart local v16    # "calendarVisible":Z
    goto/16 :goto_1

    .line 150
    .restart local v10    # "availability":I
    .restart local v11    # "calendarPrimary":Z
    .restart local v14    # "calendarId":J
    .restart local v20    # "eventId":I
    .restart local v25    # "name":Ljava/lang/String;
    .restart local v26    # "owner":Ljava/lang/String;
    :cond_8
    const/16 v24, 0x0

    .restart local v24    # "meetsTime":Z
    goto/16 :goto_2

    .line 152
    :cond_9
    const/16 v23, 0x1

    .local v23, "meetsCalendar":Z
    goto :goto_3

    .line 151
    .end local v23    # "meetsCalendar":Z
    :cond_a
    const/16 v23, 0x0

    .restart local v23    # "meetsCalendar":Z
    goto :goto_3

    .line 154
    .end local v23    # "meetsCalendar":Z
    :cond_b
    const/16 v22, 0x0

    .restart local v22    # "meetsAvailability":Z
    goto :goto_4

    .line 166
    .restart local v21    # "meetsAttendee":Z
    :cond_c
    cmp-long v4, v18, p2

    if-lez v4, :cond_0

    :try_start_1
    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v4, v18, v6

    if-gez v4, :cond_0

    .line 167
    move-wide/from16 v0, v18

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 173
    .end local v10    # "availability":I
    .end local v11    # "calendarPrimary":Z
    .end local v12    # "begin":J
    .end local v14    # "calendarId":J
    .end local v16    # "calendarVisible":Z
    .end local v18    # "end":J
    .end local v20    # "eventId":I
    .end local v21    # "meetsAttendee":Z
    .end local v22    # "meetsAvailability":Z
    .end local v24    # "meetsTime":Z
    .end local v25    # "name":Ljava/lang/String;
    .end local v26    # "owner":Ljava/lang/String;
    .end local v29    # "title":Ljava/lang/String;
    :cond_d
    if-eqz v17, :cond_e

    .line 174
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_e
    return-object v28
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 87
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallback="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRegistered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 89
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "u="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 90
    return-void
.end method

.method public setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/CalendarTracker$Callback;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-ne v0, p1, :cond_0

    return-void

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    .line 83
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/CalendarTracker;->setRegistered(Z)V

    .line 84
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
