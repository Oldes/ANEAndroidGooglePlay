.class public Lcom/amanitadesign/ane/functions/AirGooglePlayGamesReportAchievementFunction;
.super Ljava/lang/Object;
.source "AirGooglePlayGamesReportAchievementFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v6, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "achievementId":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 20
    .local v2, "percent":D
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 21
    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsDouble()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 29
    sget-object v4, Lcom/amanitadesign/ane/NativeExtension;->extensionContext:Lcom/amanitadesign/ane/NativeExtensionContext;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amanitadesign/ane/NativeExtensionContext;->createHelperIfNeeded(Landroid/app/Activity;)Lcom/amanitadesign/ane/GameHelper;

    .line 30
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_0

    .line 32
    sget-object v4, Lcom/amanitadesign/ane/NativeExtension;->extensionContext:Lcom/amanitadesign/ane/NativeExtensionContext;

    invoke-virtual {v4, v0}, Lcom/amanitadesign/ane/NativeExtensionContext;->reportAchievements(Ljava/lang/String;)V

    .line 38
    :goto_0
    return-object v6

    .line 23
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v4, Lcom/amanitadesign/ane/NativeExtension;->extensionContext:Lcom/amanitadesign/ane/NativeExtensionContext;

    invoke-virtual {v4, v0, v2, v3}, Lcom/amanitadesign/ane/NativeExtensionContext;->reportAchievements(Ljava/lang/String;D)V

    goto :goto_0
.end method
