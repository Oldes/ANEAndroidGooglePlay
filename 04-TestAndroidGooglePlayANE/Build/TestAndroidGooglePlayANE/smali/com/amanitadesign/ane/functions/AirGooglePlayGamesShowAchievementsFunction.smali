.class public Lcom/amanitadesign/ane/functions/AirGooglePlayGamesShowAchievementsFunction;
.super Ljava/lang/Object;
.source "AirGooglePlayGamesShowAchievementsFunction.java"

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
    .locals 2
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 17
    sget-object v0, Lcom/amanitadesign/ane/NativeExtension;->extensionContext:Lcom/amanitadesign/ane/NativeExtensionContext;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amanitadesign/ane/NativeExtensionContext;->createHelperIfNeeded(Landroid/app/Activity;)Lcom/amanitadesign/ane/GameHelper;

    .line 18
    sget-object v0, Lcom/amanitadesign/ane/NativeExtension;->extensionContext:Lcom/amanitadesign/ane/NativeExtensionContext;

    invoke-virtual {v0}, Lcom/amanitadesign/ane/NativeExtensionContext;->isSignedIn()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/amanitadesign/ane/NativeExtension;->extensionContext:Lcom/amanitadesign/ane/NativeExtensionContext;

    invoke-virtual {v0}, Lcom/amanitadesign/ane/NativeExtensionContext;->showAchievements()V

    .line 22
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
