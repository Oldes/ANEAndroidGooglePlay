.class Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "AIRExpandableFileChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AIRExpandableFileChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileChooserExpandableListAdapter"
.end annotation


# instance fields
.field private mRuntimeInflater:Landroid/view/LayoutInflater;

.field private mRuntimeResources:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/adobe/air/AIRExpandableFileChooser;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AIRExpandableFileChooser;Landroid/view/LayoutInflater;Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 194
    iput-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 190
    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->mRuntimeInflater:Landroid/view/LayoutInflater;

    .line 191
    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->mRuntimeResources:Landroid/content/res/Resources;

    .line 195
    iput-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->mRuntimeInflater:Landroid/view/LayoutInflater;

    .line 196
    iput-object p3, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->mRuntimeResources:Landroid/content/res/Resources;

    .line 197
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    # getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$400(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 206
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 213
    if-eqz p4, :cond_0

    instance-of v0, p4, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    if-nez v0, :cond_1

    .line 214
    :cond_0
    new-instance v0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->mRuntimeInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->mRuntimeResources:Landroid/content/res/Resources;

    move-object v4, p5

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Landroid/view/ViewGroup;II)V

    move-object p4, v0

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    # getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$400(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "FILEINFO"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    invoke-virtual {p4, v0, p1, p2}, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->bindToData(Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;II)V

    .line 222
    return-object p4

    .line 217
    :cond_1
    check-cast p4, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    # getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$400(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    # getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$500(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    # getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$500(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 242
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 249
    if-nez p3, :cond_0

    .line 250
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->mRuntimeInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 254
    :cond_0
    const v0, 0x1020014

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 255
    if-eqz v0, :cond_1

    .line 256
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    # getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;
    invoke-static {v1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$500(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "TYPE"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_1
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method
