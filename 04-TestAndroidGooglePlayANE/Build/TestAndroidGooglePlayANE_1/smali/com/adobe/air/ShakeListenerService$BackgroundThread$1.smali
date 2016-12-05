.class Lcom/adobe/air/ShakeListenerService$BackgroundThread$1;
.super Ljava/lang/Object;
.source "ShakeListenerService.java"

# interfaces
.implements Lcom/adobe/air/ShakeListener$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/ShakeListenerService$BackgroundThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/air/ShakeListenerService$BackgroundThread;


# direct methods
.method constructor <init>(Lcom/adobe/air/ShakeListenerService$BackgroundThread;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/adobe/air/ShakeListenerService$BackgroundThread$1;->this$1:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adobe/air/ShakeListenerService$BackgroundThread$1;->this$1:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    iget-object v0, v0, Lcom/adobe/air/ShakeListenerService$BackgroundThread;->this$0:Lcom/adobe/air/ShakeListenerService;

    invoke-virtual {v0}, Lcom/adobe/air/ShakeListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 101
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/air/ShakeListenerService$BackgroundThread$1;->this$1:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    iget-object v2, v2, Lcom/adobe/air/ShakeListenerService$BackgroundThread;->this$0:Lcom/adobe/air/ShakeListenerService;

    invoke-virtual {v2}, Lcom/adobe/air/ShakeListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.adobe.air.wand.WandActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/air/ShakeListenerService$BackgroundThread$1;->this$1:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    iget-object v1, v1, Lcom/adobe/air/ShakeListenerService$BackgroundThread;->this$0:Lcom/adobe/air/ShakeListenerService;

    invoke-virtual {v1}, Lcom/adobe/air/ShakeListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/adobe/air/wand/WandActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    const/high16 v1, 0x10400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/adobe/air/ShakeListenerService$BackgroundThread$1;->this$1:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    iget-object v1, v1, Lcom/adobe/air/ShakeListenerService$BackgroundThread;->this$0:Lcom/adobe/air/ShakeListenerService;

    invoke-virtual {v1, v0}, Lcom/adobe/air/ShakeListenerService;->startActivity(Landroid/content/Intent;)V

    .line 114
    :cond_0
    return-void
.end method
