.class public Lcom/adobe/air/AdobeAIR;
.super Landroid/app/Activity;
.source "AdobeAIR.java"


# static fields
.field private static final PROPERTY_INITIAL_LAUNCH:Ljava/lang/String; = "initialLaunch"

.field private static final TAG:Ljava/lang/String; = "Adobe AIR"


# instance fields
.field public DYNAMIC_URL:Ljava/lang/String;

.field private mCtx:Landroid/content/Context;

.field private mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 134
    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    .line 135
    const-string v0, "https://www.adobe.com/airgames/5/"

    iput-object v0, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    return-void
.end method

.method private isInitialLaunch()Z
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 67
    const-string v1, "initialLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isWidgetShown()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 130
    const-string v2, "widgetShown"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "featuredWidgetShown"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private updateSharedPrefForInitialLaunch()V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    const-string v1, "initialLaunch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 102
    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    invoke-virtual {v0}, Lcom/adobe/air/AdobeAIRWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x1

    .line 105
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    invoke-virtual {v1}, Lcom/adobe/air/AdobeAIRWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    .line 107
    if-lez v2, :cond_0

    .line 109
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 118
    :cond_0
    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    invoke-virtual {v0}, Lcom/adobe/air/AdobeAIRWebView;->goBack()V

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->isWidgetShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->finish()V

    .line 47
    :cond_0
    iput-object p0, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->isInitialLaunch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const-string v0, "https://www.adobe.com/airgames/4/"

    iput-object v0, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->updateSharedPrefForInitialLaunch()V

    .line 55
    :cond_1
    new-instance v0, Lcom/adobe/air/AdobeAIRWebView;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adobe/air/AdobeAIRWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    .line 56
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    invoke-virtual {v0}, Lcom/adobe/air/AdobeAIRWebView;->create()V

    .line 59
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AdobeAIRWebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/air/AdobeAIR;->onNewIntent(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->isWidgetShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->finish()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    invoke-virtual {v0}, Lcom/adobe/air/AdobeAIRWebView;->isOffline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/air/AdobeAIRWebView;->setOffline(Z)V

    .line 91
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AdobeAIRWebView;->loadUrl(Ljava/lang/String;)V

    .line 93
    :cond_1
    return-void
.end method
