.class public Lcom/amanitadesign/ane/functions/AirGooglePlayGamesSignInFunction;
.super Ljava/lang/Object;
.source "AirGooglePlayGamesSignInFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v3, 0x0

    .line 21
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 22
    .local v0, "appActivity":Landroid/app/Activity;
    sget-object v2, Lcom/amanitadesign/ane/NativeExtension;->extensionContext:Lcom/amanitadesign/ane/NativeExtensionContext;

    invoke-virtual {v2, v3}, Lcom/amanitadesign/ane/NativeExtensionContext;->createHelperIfNeeded(Landroid/app/Activity;)Lcom/amanitadesign/ane/GameHelper;

    move-result-object v1

    .line 24
    .local v1, "mHelper":Lcom/amanitadesign/ane/GameHelper;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/amanitadesign/ane/GameHelper;->onStart(Landroid/app/Activity;Z)V

    .line 25
    invoke-virtual {v1}, Lcom/amanitadesign/ane/GameHelper;->beginUserInitiatedSignIn()V

    .line 27
    return-object v3
.end method
