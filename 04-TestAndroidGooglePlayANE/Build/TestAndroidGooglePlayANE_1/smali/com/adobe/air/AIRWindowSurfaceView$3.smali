.class Lcom/adobe/air/AIRWindowSurfaceView$3;
.super Ljava/lang/Object;
.source "AIRWindowSurfaceView.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AIRWindowSurfaceView;->DoSetOnSystemUiVisibilityChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AIRWindowSurfaceView;

.field final synthetic val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;


# direct methods
.method constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 0

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    iput-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 1328
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getIsFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    # invokes: Lcom/adobe/air/AIRWindowSurfaceView;->HideSystemUI()V
    invoke-static {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$900(Lcom/adobe/air/AIRWindowSurfaceView;)V

    .line 1331
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x1

    # invokes: Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchFullScreenEvent(Z)V
    invoke-static {v0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->access$1000(Lcom/adobe/air/AIRWindowSurfaceView;Z)V

    .line 1337
    :goto_0
    return-void

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    # invokes: Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchFullScreenEvent(Z)V
    invoke-static {v0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->access$1000(Lcom/adobe/air/AIRWindowSurfaceView;Z)V

    goto :goto_0
.end method
