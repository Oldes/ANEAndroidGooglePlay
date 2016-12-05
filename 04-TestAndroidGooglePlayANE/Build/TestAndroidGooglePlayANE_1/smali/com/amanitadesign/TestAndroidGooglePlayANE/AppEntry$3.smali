.class Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry$3;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;->launchAIRService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;


# direct methods
.method constructor <init>(Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry$3;->this$0:Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry$3;->this$0:Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;

    invoke-virtual {v0, p0}, Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;->unbindService(Landroid/content/ServiceConnection;)V

    .line 302
    iget-object v0, p0, Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry$3;->this$0:Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;

    # invokes: Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;->loadSharedRuntimeDex()V
    invoke-static {v0}, Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;->access$300(Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;)V

    .line 303
    iget-object v0, p0, Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry$3;->this$0:Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;

    const/4 v1, 0x0

    # invokes: Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;->createActivityWrapper(Z)V
    invoke-static {v0, v1}, Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;->access$400(Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;Z)V

    .line 305
    # getter for: Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;->sRuntimeClassesLoaded:Z
    invoke-static {}, Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry$3;->this$0:Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;

    # invokes: Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;->InvokeWrapperOnCreate()V
    invoke-static {v0}, Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;->access$600(Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    # invokes: Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;->KillSelf()V
    invoke-static {}, Lcom/amanitadesign/TestAndroidGooglePlayANE/AppEntry;->access$700()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 319
    return-void
.end method
