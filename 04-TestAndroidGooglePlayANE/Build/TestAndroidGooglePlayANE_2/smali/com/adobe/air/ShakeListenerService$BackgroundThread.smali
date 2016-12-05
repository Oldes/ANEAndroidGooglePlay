.class Lcom/adobe/air/ShakeListenerService$BackgroundThread;
.super Ljava/lang/Thread;
.source "ShakeListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/ShakeListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/ShakeListenerService;


# direct methods
.method public constructor <init>(Lcom/adobe/air/ShakeListenerService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/adobe/air/ShakeListenerService$BackgroundThread;->this$0:Lcom/adobe/air/ShakeListenerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 72
    # setter for: Lcom/adobe/air/ShakeListenerService;->mcontext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/adobe/air/ShakeListenerService;->access$002(Lcom/adobe/air/ShakeListenerService;Landroid/content/Context;)Landroid/content/Context;

    .line 73
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/ShakeListenerService$BackgroundThread;->this$0:Lcom/adobe/air/ShakeListenerService;

    new-instance v1, Lcom/adobe/air/ShakeListener;

    iget-object v2, p0, Lcom/adobe/air/ShakeListenerService$BackgroundThread;->this$0:Lcom/adobe/air/ShakeListenerService;

    # getter for: Lcom/adobe/air/ShakeListenerService;->mcontext:Landroid/content/Context;
    invoke-static {v2}, Lcom/adobe/air/ShakeListenerService;->access$000(Lcom/adobe/air/ShakeListenerService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/adobe/air/ShakeListener;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/adobe/air/ShakeListenerService;->mShakeListener:Lcom/adobe/air/ShakeListener;
    invoke-static {v0, v1}, Lcom/adobe/air/ShakeListenerService;->access$102(Lcom/adobe/air/ShakeListenerService;Lcom/adobe/air/ShakeListener;)Lcom/adobe/air/ShakeListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    iget-object v0, p0, Lcom/adobe/air/ShakeListenerService$BackgroundThread;->this$0:Lcom/adobe/air/ShakeListenerService;

    # getter for: Lcom/adobe/air/ShakeListenerService;->mShakeListener:Lcom/adobe/air/ShakeListener;
    invoke-static {v0}, Lcom/adobe/air/ShakeListenerService;->access$100(Lcom/adobe/air/ShakeListenerService;)Lcom/adobe/air/ShakeListener;

    move-result-object v0

    new-instance v1, Lcom/adobe/air/ShakeListenerService$BackgroundThread$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/ShakeListenerService$BackgroundThread$1;-><init>(Lcom/adobe/air/ShakeListenerService$BackgroundThread;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/ShakeListener;->registerListener(Lcom/adobe/air/ShakeListener$Listener;)V

    .line 116
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0
.end method
