.class Lcom/adobe/air/AndroidWebView$1$1;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebView$1;->openFileChooser(Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/air/AndroidWebView$1;

.field final synthetic val$wrapper:Lcom/adobe/air/AndroidActivityWrapper;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebView$1;Lcom/adobe/air/AndroidActivityWrapper;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$1$1;->this$1:Lcom/adobe/air/AndroidWebView$1;

    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$1$1;->val$wrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 444
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$1$1;->this$1:Lcom/adobe/air/AndroidWebView$1;

    # getter for: Lcom/adobe/air/AndroidWebView$1;->mUploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0}, Lcom/adobe/air/AndroidWebView$1;->access$700(Lcom/adobe/air/AndroidWebView$1;)Landroid/webkit/ValueCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 449
    if-eqz p3, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    :cond_1
    move-object v0, v1

    .line 451
    :goto_1
    iget-object v2, p0, Lcom/adobe/air/AndroidWebView$1$1;->this$1:Lcom/adobe/air/AndroidWebView$1;

    # getter for: Lcom/adobe/air/AndroidWebView$1;->mUploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v2}, Lcom/adobe/air/AndroidWebView$1;->access$700(Lcom/adobe/air/AndroidWebView$1;)Landroid/webkit/ValueCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 452
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$1$1;->this$1:Lcom/adobe/air/AndroidWebView$1;

    # setter for: Lcom/adobe/air/AndroidWebView$1;->mUploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0, v1}, Lcom/adobe/air/AndroidWebView$1;->access$702(Lcom/adobe/air/AndroidWebView$1;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$1$1;->val$wrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    goto :goto_0

    .line 449
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method
