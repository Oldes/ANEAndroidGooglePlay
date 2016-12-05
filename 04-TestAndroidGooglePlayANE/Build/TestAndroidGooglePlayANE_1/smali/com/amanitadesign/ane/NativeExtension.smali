.class public Lcom/amanitadesign/ane/NativeExtension;
.super Ljava/lang/Object;
.source "NativeExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static final TAG:Ljava/lang/String; = "AmanitaNativeExtension"

.field public static appContext:Landroid/content/Context;

.field public static extensionContext:Lcom/amanitadesign/ane/NativeExtensionContext;

.field public static googleAPIActivityIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Lcom/amanitadesign/ane/NativeExtension;->extensionContext:Lcom/amanitadesign/ane/NativeExtensionContext;

    const-string v1, "LOGGING"

    invoke-virtual {v0, v1, p0}, Lcom/amanitadesign/ane/NativeExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "status"    # Ljava/lang/String;
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v1, "AmanitaNativeExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyLicenseStatus: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :try_start_0
    sget-object v1, Lcom/amanitadesign/ane/NativeExtension;->extensionContext:Lcom/amanitadesign/ane/NativeExtensionContext;

    invoke-virtual {v1, p0, p1}, Lcom/amanitadesign/ane/NativeExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AmanitaNativeExtension"

    const-string v2, "*** Failed to dispatch status!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 3
    .param p1, "contextType"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, "AmanitaNativeExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createContext: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Lcom/amanitadesign/ane/NativeExtensionContext;

    invoke-direct {v0}, Lcom/amanitadesign/ane/NativeExtensionContext;-><init>()V

    sput-object v0, Lcom/amanitadesign/ane/NativeExtension;->extensionContext:Lcom/amanitadesign/ane/NativeExtensionContext;

    .line 38
    sget-object v0, Lcom/amanitadesign/ane/NativeExtension;->extensionContext:Lcom/amanitadesign/ane/NativeExtensionContext;

    return-object v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    const-string v0, "AmanitaNativeExtension"

    const-string v1, "Extension disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sput-object v2, Lcom/amanitadesign/ane/NativeExtension;->appContext:Landroid/content/Context;

    .line 46
    sput-object v2, Lcom/amanitadesign/ane/NativeExtension;->extensionContext:Lcom/amanitadesign/ane/NativeExtensionContext;

    .line 47
    sput-object v2, Lcom/amanitadesign/ane/NativeExtension;->googleAPIActivityIntent:Landroid/content/Intent;

    .line 48
    return-void
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "AmanitaNativeExtension"

    const-string v1, "Extension initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method
