.class Lcom/adobe/air/wand/view/WandViewFlipper$4;
.super Ljava/lang/Object;
.source "WandViewFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/wand/view/WandViewFlipper;->updateConnectionToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

.field final synthetic val$connectionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/air/wand/view/WandViewFlipper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/adobe/air/wand/view/WandViewFlipper$4;->this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

    iput-object p2, p0, Lcom/adobe/air/wand/view/WandViewFlipper$4;->val$connectionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 277
    const-string v0, ""

    .line 278
    iget-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper$4;->val$connectionToken:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper$4;->val$connectionToken:Ljava/lang/String;

    # invokes: Lcom/adobe/air/wand/view/WandViewFlipper;->getTokenString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/adobe/air/wand/view/WandViewFlipper;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper$4;->this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

    # getter for: Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;
    invoke-static {v0}, Lcom/adobe/air/wand/view/WandViewFlipper;->access$400(Lcom/adobe/air/wand/view/WandViewFlipper;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0d01fb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 281
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper$4;->this$0:Lcom/adobe/air/wand/view/WandViewFlipper;

    # getter for: Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;
    invoke-static {v0}, Lcom/adobe/air/wand/view/WandViewFlipper;->access$400(Lcom/adobe/air/wand/view/WandViewFlipper;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d01fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 284
    iget-object v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper$4;->val$connectionToken:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    # invokes: Lcom/adobe/air/wand/view/WandViewFlipper;->getTokenDesc(Z)Ljava/lang/String;
    invoke-static {v1}, Lcom/adobe/air/wand/view/WandViewFlipper;->access$500(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    return-void

    .line 284
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
