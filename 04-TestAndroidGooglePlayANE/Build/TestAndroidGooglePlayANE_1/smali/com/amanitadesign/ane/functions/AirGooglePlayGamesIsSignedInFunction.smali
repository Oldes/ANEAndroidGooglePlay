.class public Lcom/amanitadesign/ane/functions/AirGooglePlayGamesIsSignedInFunction;
.super Ljava/lang/Object;
.source "AirGooglePlayGamesIsSignedInFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 14
    sget-object v2, Lcom/amanitadesign/ane/NativeExtension;->extensionContext:Lcom/amanitadesign/ane/NativeExtensionContext;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amanitadesign/ane/NativeExtensionContext;->createHelperIfNeeded(Landroid/app/Activity;)Lcom/amanitadesign/ane/GameHelper;

    .line 16
    const/4 v1, 0x0

    .line 19
    .local v1, "isSignedIn":Lcom/adobe/fre/FREObject;
    :try_start_0
    sget-object v2, Lcom/amanitadesign/ane/NativeExtension;->extensionContext:Lcom/amanitadesign/ane/NativeExtensionContext;

    invoke-virtual {v2}, Lcom/amanitadesign/ane/NativeExtensionContext;->isSignedIn()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 24
    :goto_0
    return-object v1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_0
.end method
