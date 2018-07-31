.class Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;
.super Ljava/lang/Object;
.source "SecrecySwitchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/policy/SecrecySwitchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecrecySwitchUpdateInfo"
.end annotation


# static fields
.field static final SWITCH_ACTIVITY:Ljava/lang/String; = "activity_sw"

.field static final SWITCH_ADB:Ljava/lang/String; = "adb_sw"

.field static final SWITCH_ID_TIMEOUT:Ljava/lang/String; = "id_timeout"

.field static final SWITCH_LOG:Ljava/lang/String; = "log_sw"

.field static final SWITCH_MAC_TIMEOUT:Ljava/lang/String; = "mac_timeout"

.field static final SWITCH_SUPPORT:Ljava/lang/String; = "support"


# instance fields
.field private final TAG_ACTIVITY:Ljava/lang/Object;

.field private mActivitySwitch:Z

.field private mAdbSwitch:Z

.field private final mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

.field private mIdTimeout:J

.field private mLogSwitch:Z

.field private mMacTimeout:J

.field private mSupportSwitch:Z

.field final synthetic this$0:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/secrecy/policy/SecrecySwitchHelper;Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/secrecy/policy/SecrecySwitchHelper;
    .param p2, "switchUpdateListener"    # Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->this$0:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string/jumbo v0, "activity"

    iput-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->TAG_ACTIVITY:Ljava/lang/Object;

    .line 65
    iput-object p2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    .line 66
    return-void
.end method


# virtual methods
.method public dumpToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "\nSecrecy Switch Info:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string/jumbo v1, "support : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mSupportSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string/jumbo v1, "activity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mActivitySwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string/jumbo v1, "log : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mLogSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string/jumbo v1, "adb : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mAdbSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string/jumbo v1, "mac_timeout : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mMacTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string/jumbo v1, "id_timeout : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mIdTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActivitySwitch()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mActivitySwitch:Z

    return v0
.end method

.method public getAdbSwitch()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mAdbSwitch:Z

    return v0
.end method

.method public getIdTimeout()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mIdTimeout:J

    return-wide v0
.end method

.method public getLogSwitch()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mLogSwitch:Z

    return v0
.end method

.method public getMacTimeout()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mMacTimeout:J

    return-wide v0
.end method

.method public getSupportSwitch()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mSupportSwitch:Z

    return v0
.end method

.method public parseContentFromXML(Ljava/lang/String;)V
    .locals 13
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "configFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 75
    .local v9, "xmlReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v9, Ljava/io/FileReader;

    .end local v9    # "xmlReader":Ljava/io/FileReader;
    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .local v9, "xmlReader":Ljava/io/FileReader;
    const/4 v8, 0x0

    .line 84
    .local v8, "updated":Z
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 85
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 86
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 87
    .local v5, "eventType":I
    iget-object v10, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->this$0:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-static {v10}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->-get0(Lcom/android/server/secrecy/policy/SecrecySwitchHelper;)Lcom/android/server/secrecy/work/ActivityConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/secrecy/work/ActivityConfig;->clearActivityInfo()V

    .line 88
    :goto_0
    const/4 v10, 0x1

    if-eq v5, v10, :cond_8

    .line 89
    packed-switch v5, :pswitch_data_0

    .line 132
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    goto :goto_0

    .line 76
    .end local v5    # "eventType":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "updated":Z
    .end local v9    # "xmlReader":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 79
    return-void

    .line 93
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "eventType":I
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "updated":Z
    .restart local v9    # "xmlReader":Ljava/io/FileReader;
    :pswitch_1
    :try_start_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "tmp":Ljava/lang/String;
    const-string/jumbo v10, "support"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 95
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 96
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "currentText":Ljava/lang/String;
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mSupportSwitch:Z

    .line 98
    const/4 v8, 0x1

    goto :goto_1

    .line 99
    .end local v1    # "currentText":Ljava/lang/String;
    :cond_2
    const-string/jumbo v10, "activity_sw"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 100
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 101
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 102
    .restart local v1    # "currentText":Ljava/lang/String;
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mActivitySwitch:Z

    .line 103
    const/4 v8, 0x1

    goto :goto_1

    .line 104
    .end local v1    # "currentText":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, "log_sw"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 105
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 106
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 107
    .restart local v1    # "currentText":Ljava/lang/String;
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mLogSwitch:Z

    .line 108
    const/4 v8, 0x1

    goto :goto_1

    .line 109
    .end local v1    # "currentText":Ljava/lang/String;
    :cond_4
    const-string/jumbo v10, "adb_sw"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 110
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 111
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 112
    .restart local v1    # "currentText":Ljava/lang/String;
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mAdbSwitch:Z

    .line 113
    const/4 v8, 0x1

    goto :goto_1

    .line 114
    .end local v1    # "currentText":Ljava/lang/String;
    :cond_5
    const-string/jumbo v10, "mac_timeout"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 115
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 116
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 117
    .restart local v1    # "currentText":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mMacTimeout:J

    .line 118
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 119
    .end local v1    # "currentText":Ljava/lang/String;
    :cond_6
    const-string/jumbo v10, "id_timeout"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 120
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 121
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1    # "currentText":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mIdTimeout:J

    .line 123
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 124
    .end local v1    # "currentText":Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->TAG_ACTIVITY:Ljava/lang/Object;

    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 125
    iget-object v10, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->this$0:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-static {v10}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->-get0(Lcom/android/server/secrecy/policy/SecrecySwitchHelper;)Lcom/android/server/secrecy/work/ActivityConfig;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/android/server/secrecy/work/ActivityConfig;->parseActivityInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 142
    .end local v7    # "tmp":Ljava/lang/String;
    :cond_8
    if-eqz v9, :cond_9

    .line 143
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 150
    .end local v5    # "eventType":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    :goto_2
    if-eqz v8, :cond_a

    iget-object v10, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    if-eqz v10, :cond_a

    .line 151
    iget-object v10, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    invoke-interface {v10}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;->onSecrecySwitchUpdate()V

    .line 153
    :cond_a
    return-void

    .line 145
    .restart local v5    # "eventType":I
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v3

    .line 146
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v10, "SecrecyService.SecrecySwitchHelper"

    const-string/jumbo v11, "Got execption close permReader."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 137
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "eventType":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v3

    .line 138
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v10, "SecrecyService.SecrecySwitchHelper"

    const-string/jumbo v11, "Got execption parsing permissions."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    if-eqz v9, :cond_9

    .line 143
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 145
    :catch_3
    move-exception v3

    .line 146
    const-string/jumbo v10, "SecrecyService.SecrecySwitchHelper"

    const-string/jumbo v11, "Got execption close permReader."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 134
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 135
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string/jumbo v10, "SecrecyService.SecrecySwitchHelper"

    const-string/jumbo v11, "Got execption parsing permissions."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 142
    if-eqz v9, :cond_9

    .line 143
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    .line 145
    :catch_5
    move-exception v3

    .line 146
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "SecrecyService.SecrecySwitchHelper"

    const-string/jumbo v11, "Got execption close permReader."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 140
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v10

    .line 142
    if-eqz v9, :cond_b

    .line 143
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 140
    :cond_b
    :goto_3
    throw v10

    .line 145
    :catch_6
    move-exception v3

    .line 146
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "SecrecyService.SecrecySwitchHelper"

    const-string/jumbo v12, "Got execption close permReader."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
