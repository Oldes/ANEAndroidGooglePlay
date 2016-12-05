.class Lcom/adobe/air/AIRExpandableFileChooser$4;
.super Ljava/lang/Object;
.source "AIRExpandableFileChooser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AIRExpandableFileChooser;->createInvisibleMultipleFileSelectionView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AIRExpandableFileChooser;


# direct methods
.method constructor <init>(Lcom/adobe/air/AIRExpandableFileChooser;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 511
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    # getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$800(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 512
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    # getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$500(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    .line 513
    :goto_0
    if-ge v3, v4, :cond_2

    .line 515
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    # getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$400(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    .line 516
    :goto_1
    if-ge v1, v5, :cond_1

    .line 518
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    # invokes: Lcom/adobe/air/AIRExpandableFileChooser;->expandableListPositionToFlatPosition(II)I
    invoke-static {v0, v3, v1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$100(Lcom/adobe/air/AIRExpandableFileChooser;II)I

    move-result v0

    .line 519
    iget-object v6, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    # getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mCheckedFiles:Landroid/util/SparseBooleanArray;
    invoke-static {v6}, Lcom/adobe/air/AIRExpandableFileChooser;->access$300(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    # getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$1100(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 522
    iget-object v6, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    # getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/adobe/air/AIRExpandableFileChooser;->access$800(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "FILEINFO"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    iget-object v0, v0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 513
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    # getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserStub:Lcom/adobe/air/FileChooserStub;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$600(Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/FileChooserStub;

    move-result-object v0

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/adobe/air/FileChooserStub;->SetUserAction(Ljava/lang/String;)V

    .line 528
    return-void
.end method
