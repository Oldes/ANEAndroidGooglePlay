.class public Lcom/adobe/air/wand/view/WandViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "WandViewFlipper.java"

# interfaces
.implements Lcom/adobe/air/wand/view/WandView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/view/WandViewFlipper$5;
    }
.end annotation


# static fields
.field private static final ACTIVE_WIFI_ASSIST_MESSAGE:Ljava/lang/String; = "Enter this PIN in the desktop game and press \'Connect\'"

.field private static final DEFAULT_VIEW_FONT_ASSET:Ljava/lang/String; = "AdobeClean-Light.ttf"

.field private static final INACTIVE_WIFI_ASSIST_MESSAGE:Ljava/lang/String; = "Connect this device to WiFi to get the pairing PIN"

.field private static final LOG_TAG:Ljava/lang/String; = "WandViewFlipper"

.field private static final PIN_TITLE:Ljava/lang/String; = "PIN : "

.field private static final TITLE_DESCRIPTION_STRING:Ljava/lang/String; = "Use this device as a Wireless Gamepad"


# instance fields
.field private mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

.field private mCompanionViewHolder:Landroid/view/View;

.field private mCurrentViewIndex:I

.field private mDefaultView:Landroid/view/View;

.field private mListener:Lcom/adobe/air/wand/view/WandView$Listener;

.field private mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I

    .line 51
    iput-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    .line 52
    iput-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionViewHolder:Landroid/view/View;

    .line 53
    iput-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    .line 54
    iput-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 56
    iput-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mListener:Lcom/adobe/air/wand/view/WandView$Listener;

    .line 61
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/view/WandViewFlipper;->initView(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I

    .line 51
    iput-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    .line 52
    iput-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionViewHolder:Landroid/view/View;

    .line 53
    iput-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    .line 54
    iput-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 56
    iput-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mListener:Lcom/adobe/air/wand/view/WandView$Listener;

    .line 67
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/view/WandViewFlipper;->initView(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/wand/view/WandViewFlipper;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionViewHolder:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/air/wand/view/WandViewFlipper;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/adobe/air/wand/view/WandViewFlipper;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/air/wand/view/WandViewFlipper;)Lcom/adobe/air/wand/view/WandView$Listener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mListener:Lcom/adobe/air/wand/view/WandView$Listener;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/adobe/air/wand/view/WandViewFlipper;->getTokenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/air/wand/view/WandViewFlipper;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/adobe/air/wand/view/WandViewFlipper;->getTokenDesc(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTokenDesc(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    if-eqz p0, :cond_0

    const-string v0, "Enter this PIN in the desktop game and press \'Connect\'"

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Connect this device to WiFi to get the pairing PIN"

    goto :goto_0
.end method

.method private static getTokenString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PIN : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mListener:Lcom/adobe/air/wand/view/WandView$Listener;

    .line 75
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/adobe/air/wand/view/WandViewFlipper;->setKeepScreenOn(Z)V

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 79
    const v1, 0x7f0300b6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    .line 80
    const v1, 0x7f0300b5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionViewHolder:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 84
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    const v1, 0x7f0d01f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "AdobeClean-Light.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    const v2, 0x7f0d01fb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    const v2, 0x7f0d01fc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    const v2, 0x7f0d01f9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    const-string v1, "Use this device as a Wireless Gamepad"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/air/wand/view/WandViewFlipper;->addView(Landroid/view/View;I)V

    .line 100
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionViewHolder:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/air/wand/view/WandViewFlipper;->addView(Landroid/view/View;I)V

    .line 102
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionViewHolder:Landroid/view/View;

    const v1, 0x7f0d01f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/view/CompanionView;

    iput-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    .line 104
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getTouchSensor()Lcom/adobe/air/wand/view/TouchSensor;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public drawImage(Landroid/graphics/Bitmap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    iget v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Companion view is not yet loaded."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionViewHolder:Landroid/view/View;

    const v1, 0x7f0d01f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 158
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 161
    if-eq v2, p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 165
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 168
    if-le v3, v1, :cond_3

    .line 170
    const/4 v4, 0x0

    sub-int v1, v3, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    invoke-static {v2, v4, v1, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 173
    if-eq v1, v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object v2, v1

    .line 180
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/air/wand/view/WandViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v3, Lcom/adobe/air/wand/view/WandViewFlipper$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/adobe/air/wand/view/WandViewFlipper$1;-><init>(Lcom/adobe/air/wand/view/WandViewFlipper;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method public getTouchSensor()Lcom/adobe/air/wand/view/TouchSensor;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    return-object v0
.end method

.method public loadCompanionView()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 233
    iget v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I

    if-ne v0, v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 235
    :cond_0
    iput v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I

    .line 237
    invoke-virtual {p0}, Lcom/adobe/air/wand/view/WandViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/wand/view/WandViewFlipper$3;

    invoke-direct {v1, p0}, Lcom/adobe/air/wand/view/WandViewFlipper$3;-><init>(Lcom/adobe/air/wand/view/WandViewFlipper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public loadDefaultView()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/adobe/air/wand/view/WandViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/wand/view/WandViewFlipper$2;

    invoke-direct {v1, p0}, Lcom/adobe/air/wand/view/WandViewFlipper$2;-><init>(Lcom/adobe/air/wand/view/WandViewFlipper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method public registerListener(Lcom/adobe/air/wand/view/WandView$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mListener:Lcom/adobe/air/wand/view/WandView$Listener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "View listener is already registered"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid view listener"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    iput-object p1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mListener:Lcom/adobe/air/wand/view/WandView$Listener;

    .line 261
    return-void
.end method

.method public setScreenOrientation(Lcom/adobe/air/wand/view/WandView$ScreenOrientation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    sget-object v0, Lcom/adobe/air/wand/view/WandViewFlipper$5;->$SwitchMap$com$adobe$air$wand$view$WandView$ScreenOrientation:[I

    invoke-virtual {p1}, Lcom/adobe/air/wand/view/WandView$ScreenOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    const/4 v0, -0x1

    move v1, v0

    .line 140
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/air/wand/view/WandViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 142
    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wand cannot find activity while loading companion."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :pswitch_0
    const/4 v0, 0x0

    move v1, v0

    .line 122
    goto :goto_0

    .line 125
    :pswitch_1
    const/4 v0, 0x1

    move v1, v0

    .line 126
    goto :goto_0

    .line 129
    :pswitch_2
    const/16 v0, 0x9

    move v1, v0

    .line 130
    goto :goto_0

    .line 133
    :pswitch_3
    const/16 v0, 0x8

    move v1, v0

    .line 134
    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 146
    return-void

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public unregisterListener()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mListener:Lcom/adobe/air/wand/view/WandView$Listener;

    .line 267
    return-void
.end method

.method public updateConnectionToken(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 272
    iget v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/air/wand/view/WandViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/wand/view/WandViewFlipper$4;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/wand/view/WandViewFlipper$4;-><init>(Lcom/adobe/air/wand/view/WandViewFlipper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
