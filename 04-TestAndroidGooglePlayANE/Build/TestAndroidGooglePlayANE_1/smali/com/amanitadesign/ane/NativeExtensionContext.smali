.class public Lcom/amanitadesign/ane/NativeExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "NativeExtensionContext.java"

# interfaces
.implements Lcom/amanitadesign/ane/GameHelper$GameHelperListener;
.implements Lcom/adobe/air/ActivityResultCallback;


# static fields
.field public static FREContext:Lcom/adobe/fre/FREContext; = null

.field public static final TAG:Ljava/lang/String; = "AmanitaContext"

.field private static mHelper:Lcom/amanitadesign/ane/GameHelper;


# instance fields
.field final MAX_SNAPSHOT_RESOLVE_RETRIES:I

.field final RC_SHOW_ACHIEVEMENTS:I

.field private _activityInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private aaw:Lcom/adobe/air/AndroidActivityWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/amanitadesign/ane/NativeExtensionContext;->mHelper:Lcom/amanitadesign/ane/GameHelper;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->aaw:Lcom/adobe/air/AndroidActivityWrapper;

    .line 39
    const/16 v0, 0x108d

    iput v0, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->RC_SHOW_ACHIEVEMENTS:I

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->MAX_SNAPSHOT_RESOLVE_RETRIES:I

    .line 45
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->aaw:Lcom/adobe/air/AndroidActivityWrapper;

    .line 46
    iget-object v0, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 47
    return-void
.end method


# virtual methods
.method public createHelperIfNeeded(Landroid/app/Activity;)Lcom/amanitadesign/ane/GameHelper;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 114
    sget-object v0, Lcom/amanitadesign/ane/NativeExtensionContext;->mHelper:Lcom/amanitadesign/ane/GameHelper;

    if-nez v0, :cond_0

    .line 116
    const-string v0, "create helper"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/NativeExtensionContext;->logEvent(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/amanitadesign/ane/GameHelper;

    invoke-virtual {p0}, Lcom/amanitadesign/ane/NativeExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/amanitadesign/ane/GameHelper;-><init>(Landroid/app/Activity;I)V

    sput-object v0, Lcom/amanitadesign/ane/NativeExtensionContext;->mHelper:Lcom/amanitadesign/ane/GameHelper;

    .line 118
    sget-object v0, Lcom/amanitadesign/ane/NativeExtensionContext;->mHelper:Lcom/amanitadesign/ane/GameHelper;

    invoke-virtual {v0, p0}, Lcom/amanitadesign/ane/GameHelper;->setup(Lcom/amanitadesign/ane/GameHelper$GameHelperListener;)V

    .line 120
    :cond_0
    sget-object v0, Lcom/amanitadesign/ane/NativeExtensionContext;->mHelper:Lcom/amanitadesign/ane/GameHelper;

    return-object v0
.end method

.method public dispatchEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "OK"

    invoke-virtual {p0, p1, v0}, Lcom/amanitadesign/ane/NativeExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventData"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/amanitadesign/ane/NativeExtensionContext;->logEvent(Ljava/lang/String;)V

    .line 104
    if-nez p2, :cond_0

    .line 106
    const-string p2, "OK"

    .line 108
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amanitadesign/ane/NativeExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->aaw:Lcom/adobe/air/AndroidActivityWrapper;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->aaw:Lcom/adobe/air/AndroidActivityWrapper;

    .line 56
    :cond_0
    const-string v0, "AmanitaContext"

    const-string v1, "Context disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/amanitadesign/ane/NativeExtensionContext;->mHelper:Lcom/amanitadesign/ane/GameHelper;

    invoke-virtual {v0}, Lcom/amanitadesign/ane/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v0, "functions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "init"

    new-instance v2, Lcom/amanitadesign/ane/functions/InitFunction;

    invoke-direct {v2}, Lcom/amanitadesign/ane/functions/InitFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "hello"

    new-instance v2, Lcom/amanitadesign/ane/functions/HelloFunction;

    invoke-direct {v2}, Lcom/amanitadesign/ane/functions/HelloFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "signIn"

    new-instance v2, Lcom/amanitadesign/ane/functions/AirGooglePlayGamesSignInFunction;

    invoke-direct {v2}, Lcom/amanitadesign/ane/functions/AirGooglePlayGamesSignInFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "signOut"

    new-instance v2, Lcom/amanitadesign/ane/functions/AirGooglePlayGamesSignOutFunction;

    invoke-direct {v2}, Lcom/amanitadesign/ane/functions/AirGooglePlayGamesSignOutFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "isSignedIn"

    new-instance v2, Lcom/amanitadesign/ane/functions/AirGooglePlayGamesIsSignedInFunction;

    invoke-direct {v2}, Lcom/amanitadesign/ane/functions/AirGooglePlayGamesIsSignedInFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "reportAchievement"

    new-instance v2, Lcom/amanitadesign/ane/functions/AirGooglePlayGamesReportAchievementFunction;

    invoke-direct {v2}, Lcom/amanitadesign/ane/functions/AirGooglePlayGamesReportAchievementFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "showStandardAchievements"

    new-instance v2, Lcom/amanitadesign/ane/functions/AirGooglePlayGamesShowAchievementsFunction;

    invoke-direct {v2}, Lcom/amanitadesign/ane/functions/AirGooglePlayGamesShowAchievementsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-object v0
.end method

.method public isSignedIn()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/amanitadesign/ane/NativeExtensionContext;->mHelper:Lcom/amanitadesign/ane/GameHelper;

    invoke-virtual {v0}, Lcom/amanitadesign/ane/GameHelper;->isSignedIn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string v0, "AmanitaContext"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExtensionContext.onActivityResult requestCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    const-string v1, " resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amanitadesign/ane/NativeExtension;->log(Ljava/lang/String;)V

    .line 81
    const/16 v0, 0x108d

    if-ne p1, v0, :cond_1

    const/16 v0, 0x2711

    if-ne p2, v0, :cond_1

    .line 83
    sget-object v0, Lcom/amanitadesign/ane/NativeExtensionContext;->mHelper:Lcom/amanitadesign/ane/GameHelper;

    invoke-virtual {v0}, Lcom/amanitadesign/ane/GameHelper;->disconnect()V

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/amanitadesign/ane/NativeExtensionContext;->mHelper:Lcom/amanitadesign/ane/GameHelper;

    .line 85
    const-string v0, "ON_SIGN_OUT_SUCCESS"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/NativeExtensionContext;->dispatchEvent(Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    sget-object v0, Lcom/amanitadesign/ane/NativeExtensionContext;->mHelper:Lcom/amanitadesign/ane/GameHelper;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/amanitadesign/ane/NativeExtensionContext;->mHelper:Lcom/amanitadesign/ane/GameHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amanitadesign/ane/GameHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSignInFailed()V
    .locals 3

    .prologue
    .line 175
    const-string v1, "onSignInFailed"

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/NativeExtensionContext;->logEvent(Ljava/lang/String;)V

    .line 176
    const-string v1, "ON_SIGN_IN_FAIL"

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/NativeExtensionContext;->dispatchEvent(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->_activityInstances:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->_activityInstances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->_activityInstances:Ljava/util/List;

    .line 188
    :cond_1
    return-void

    .line 179
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 181
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onSignInSucceeded()V
    .locals 3

    .prologue
    .line 192
    const-string v1, "ON_SIGN_IN_SUCCESS"

    invoke-virtual {p0, v1}, Lcom/amanitadesign/ane/NativeExtensionContext;->dispatchEvent(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->_activityInstances:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->_activityInstances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->_activityInstances:Ljava/util/List;

    .line 204
    :cond_1
    return-void

    .line 195
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 197
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public registerActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->_activityInstances:Ljava/util/List;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->_activityInstances:Ljava/util/List;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/amanitadesign/ane/NativeExtensionContext;->_activityInstances:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public reportAchievements(Ljava/lang/String;)V
    .locals 2
    .param p1, "achievementId"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/amanitadesign/ane/NativeExtensionContext;->isSignedIn()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/amanitadesign/ane/NativeExtensionContext;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reportAchievements(Ljava/lang/String;D)V
    .locals 4
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "percentDouble"    # D

    .prologue
    .line 167
    const-wide/16 v2, 0x0

    cmpl-double v1, p2, v2

    if-lez v1, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, p2, v2

    if-gtz v1, :cond_0

    .line 168
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, p2

    double-to-int v0, v2

    .line 169
    .local v0, "percent":I
    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/amanitadesign/ane/NativeExtensionContext;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/google/android/gms/games/achievement/Achievements;->setSteps(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    .line 171
    .end local v0    # "percent":I
    :cond_0
    return-void
.end method

.method public showAchievements()V
    .locals 3

    .prologue
    .line 161
    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v2, Lcom/amanitadesign/ane/NativeExtensionContext;->mHelper:Lcom/amanitadesign/ane/GameHelper;

    invoke-virtual {v2}, Lcom/amanitadesign/ane/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    .line 162
    .local v0, "achievementsIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/amanitadesign/ane/NativeExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x108d

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 163
    return-void
.end method

.method public signOut()V
    .locals 1

    .prologue
    .line 137
    const-string v0, "signOut"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/NativeExtensionContext;->logEvent(Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/amanitadesign/ane/NativeExtensionContext;->mHelper:Lcom/amanitadesign/ane/GameHelper;

    invoke-virtual {v0}, Lcom/amanitadesign/ane/GameHelper;->signOut()V

    .line 140
    const-string v0, "ON_SIGN_OUT_SUCCESS"

    invoke-virtual {p0, v0}, Lcom/amanitadesign/ane/NativeExtensionContext;->dispatchEvent(Ljava/lang/String;)V

    .line 141
    return-void
.end method
