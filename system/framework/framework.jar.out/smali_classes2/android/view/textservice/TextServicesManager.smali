.class public final Landroid/view/textservice/TextServicesManager;
.super Ljava/lang/Object;
.source "TextServicesManager.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Landroid/view/textservice/TextServicesManager;


# instance fields
.field private final mService:Lcom/android/internal/textservice/ITextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string/jumbo v0, "textservices"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    .line 76
    return-void
.end method

.method public static getInstance()Landroid/view/textservice/TextServicesManager;
    .locals 3

    .prologue
    .line 83
    const-class v2, Landroid/view/textservice/TextServicesManager;

    monitor-enter v2

    .line 84
    :try_start_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 86
    :try_start_1
    new-instance v1, Landroid/view/textservice/TextServicesManager;

    invoke-direct {v1}, Landroid/view/textservice/TextServicesManager;-><init>()V

    sput-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :cond_0
    :try_start_2
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 99
    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 100
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 101
    return-object p0

    .line 103
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .locals 3

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 3
    .param p1, "allowImplicitlySelectedSubtype"    # Z

    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .locals 3

    .prologue
    .line 191
    :try_start_0
    iget-object v2, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-interface {v2}, Lcom/android/internal/textservice/ITextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 195
    .local v1, "retval":[Landroid/view/textservice/SpellCheckerInfo;
    return-object v1

    .line 196
    .end local v1    # "retval":[Landroid/view/textservice/SpellCheckerInfo;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isSpellCheckerEnabled()Z
    .locals 2

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-interface {v1}, Lcom/android/internal/textservice/ITextServicesManager;->isSpellCheckerEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;
    .locals 18
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "listener"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;
    .param p4, "referToSpellCheckerLanguageSettings"    # Z

    .prologue
    .line 123
    if-nez p3, :cond_0

    .line 124
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 126
    :cond_0
    if-nez p4, :cond_1

    if-nez p2, :cond_1

    .line 127
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Locale should not be null if you don\'t refer settings."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 132
    const/4 v1, 0x0

    return-object v1

    .line 137
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 141
    .local v10, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v10, :cond_3

    .line 142
    const/4 v1, 0x0

    return-object v1

    .line 138
    .end local v10    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catch_0
    move-exception v7

    .line 139
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1

    .line 144
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v10    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_3
    const/4 v13, 0x0

    .line 145
    .local v13, "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz p4, :cond_6

    .line 146
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v13

    .line 147
    .local v13, "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    if-nez v13, :cond_4

    .line 148
    const/4 v1, 0x0

    return-object v1

    .line 150
    :cond_4
    if-eqz p2, :cond_7

    .line 151
    invoke-virtual {v13}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v15

    .line 152
    .local v15, "subtypeLocale":Ljava/lang/String;
    invoke-static {v15}, Landroid/view/textservice/TextServicesManager;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 153
    .local v14, "subtypeLanguage":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    .line 154
    :cond_5
    const/4 v1, 0x0

    return-object v1

    .line 158
    .end local v14    # "subtypeLanguage":Ljava/lang/String;
    .end local v15    # "subtypeLocale":Ljava/lang/String;
    .local v13, "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "localeStr":Ljava/lang/String;
    const/4 v8, 0x0

    .end local v13    # "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    .local v8, "i":I
    :goto_0
    invoke-virtual {v10}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v1

    if-ge v8, v1, :cond_7

    .line 160
    invoke-virtual {v10, v8}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v12

    .line 161
    .local v12, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v12}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v17

    .line 162
    .local v17, "tempSubtypeLocale":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/view/textservice/TextServicesManager;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 163
    .local v16, "tempSubtypeLanguage":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 164
    move-object v13, v12

    .line 172
    .end local v8    # "i":I
    .end local v9    # "localeStr":Ljava/lang/String;
    .end local v12    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v16    # "tempSubtypeLanguage":Ljava/lang/String;
    .end local v17    # "tempSubtypeLocale":Ljava/lang/String;
    :cond_7
    if-nez v13, :cond_a

    .line 173
    const/4 v1, 0x0

    return-object v1

    .line 166
    .restart local v8    # "i":I
    .restart local v9    # "localeStr":Ljava/lang/String;
    .restart local v12    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .restart local v16    # "tempSubtypeLanguage":Ljava/lang/String;
    .restart local v17    # "tempSubtypeLocale":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_9

    .line 167
    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 166
    if-eqz v1, :cond_9

    .line 168
    move-object v13, v12

    .line 159
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 175
    .end local v8    # "i":I
    .end local v9    # "localeStr":Ljava/lang/String;
    .end local v12    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v16    # "tempSubtypeLanguage":Ljava/lang/String;
    .end local v17    # "tempSubtypeLocale":Ljava/lang/String;
    :cond_a
    new-instance v11, Landroid/view/textservice/SpellCheckerSession;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    move-object/from16 v0, p3

    invoke-direct {v11, v10, v1, v0}, Landroid/view/textservice/SpellCheckerSession;-><init>(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/internal/textservice/ITextServicesManager;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)V

    .line 177
    .local v11, "session":Landroid/view/textservice/SpellCheckerSession;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-virtual {v10}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {v11}, Landroid/view/textservice/SpellCheckerSession;->getTextServicesSessionListener()Lcom/android/internal/textservice/ITextServicesSessionListener;

    move-result-object v4

    .line 179
    invoke-virtual {v11}, Landroid/view/textservice/SpellCheckerSession;->getSpellCheckerSessionListener()Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v5

    move-object/from16 v6, p1

    .line 177
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/textservice/ITextServicesManager;->getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    return-object v11

    .line 180
    :catch_1
    move-exception v7

    .line 181
    .restart local v7    # "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
