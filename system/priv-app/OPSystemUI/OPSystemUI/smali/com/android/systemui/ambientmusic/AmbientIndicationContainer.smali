.class public Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;
.super Lcom/android/systemui/AutoReinflateContainer;
.source "AmbientIndicationContainer.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeReceiver;


# instance fields
.field private mAmbientIndication:Landroid/view/View;

.field private mArtistName:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mCondition:Ljava/lang/String;

.field private mConditionCode:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mDozing:Z

.field private mIcon:Landroid/widget/ImageView;

.field private mIsAmbientPlay:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTemp:Ljava/lang/String;

.field private mText:Landroid/widget/TextView;

.field private mTrackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/AutoReinflateContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-object p1, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method


# virtual methods
.method public hideIndication()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->setIndication(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public hideWeatherIndication()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->setWeatherIndication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method

.method public initializeView(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 73
    new-instance v0, Lcom/android/systemui/ambientmusic/AmbientIndicationInflateListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/ambientmusic/AmbientIndicationInflateListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->addInflateListener(Lcom/android/systemui/AutoReinflateContainer$InflateListener;)V

    .line 74
    return-void
.end method

.method public setDozing(Z)V
    .locals 0
    .param p1, "dozing"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mDozing:Z

    .line 87
    return-void
.end method

.method public setIndication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "trackName"    # Ljava/lang/String;
    .param p2, "artistName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    iget-object v2, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 91
    const-string/jumbo v3, "ambient_play_lockscreen"

    .line 90
    invoke-static {v2, v3, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 92
    .local v1, "mAmbientPlayLockscreen":I
    iget-object v2, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 93
    const-string/jumbo v3, "ambient_play"

    .line 92
    invoke-static {v2, v3, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 94
    .local v0, "mAmbientPlay":I
    iget-object v2, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11010c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 95
    aput-object p1, v4, v5

    aput-object p2, v4, v6

    .line 94
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080178

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iput-object p1, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mTrackName:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mArtistName:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientIndication:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 100
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 101
    iput-boolean v5, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mIsAmbientPlay:Z

    .line 102
    iget-object v2, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientIndication:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iput-boolean v6, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mIsAmbientPlay:Z

    .line 105
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientIndication:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWeatherIndication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "temp"    # Ljava/lang/String;
    .param p2, "condition"    # Ljava/lang/String;
    .param p3, "city"    # Ljava/lang/String;
    .param p4, "conditionCode"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 112
    iget-object v1, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 113
    const-string/jumbo v2, "ambient_weather_lockscreen"

    const/4 v3, -0x2

    .line 112
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 114
    .local v0, "mAmbientWeatherLockscreen":I
    iget-object v1, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11010d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 115
    aput-object p1, v3, v5

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    .line 114
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    instance-of v1, p4, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iput-object p1, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mTemp:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mCondition:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mCity:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mConditionCode:Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v1, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientIndication:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 125
    if-nez p1, :cond_2

    if-nez p3, :cond_2

    .line 126
    iget-object v1, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientIndication:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mIsAmbientPlay:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 129
    iget-object v1, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientIndication:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateAmbientIndicationView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientIndication:Landroid/view/View;

    .line 78
    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mText:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mIcon:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mTrackName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mArtistName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->setIndication(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mTemp:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mCondition:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mCity:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->mConditionCode:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->setWeatherIndication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method
