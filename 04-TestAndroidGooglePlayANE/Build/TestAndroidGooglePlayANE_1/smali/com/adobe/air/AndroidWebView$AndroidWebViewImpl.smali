.class public Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;
.super Landroid/webkit/WebView;
.source "AndroidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidWebViewImpl"
.end annotation


# instance fields
.field private mLastFocusDirection:I

.field private m_focusedChildView:Landroid/view/View;

.field private m_hasFocus:Z

.field private m_inRequestChildFocus:Z

.field final synthetic this$0:Lcom/adobe/air/AndroidWebView;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidWebView;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    .line 160
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 154
    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    .line 156
    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    .line 157
    iput v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->mLastFocusDirection:I

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidWebView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    .line 164
    invoke-direct {p0, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    .line 156
    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    .line 157
    iput v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->mLastFocusDirection:I

    .line 165
    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidWebView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    .line 168
    invoke-direct {p0, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    .line 156
    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    .line 157
    iput v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->mLastFocusDirection:I

    .line 169
    return-void
.end method

.method private dispatchFocusEvent(ZI)V
    .locals 8

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 266
    iget-boolean v2, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    if-ne v2, p1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iput-boolean p1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    .line 271
    iget-object v2, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    .line 273
    # getter for: Lcom/adobe/air/AndroidWebView;->mInternalReference:J
    invoke-static {v2}, Lcom/adobe/air/AndroidWebView;->access$200(Lcom/adobe/air/AndroidWebView;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 280
    iget-object v3, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    # getter for: Lcom/adobe/air/AndroidWebView;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;
    invoke-static {v3}, Lcom/adobe/air/AndroidWebView;->access$300(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 281
    iget-object v3, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    # getter for: Lcom/adobe/air/AndroidWebView;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;
    invoke-static {v3}, Lcom/adobe/air/AndroidWebView;->access$300(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v3

    iget-boolean v4, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    invoke-virtual {v3, v2, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->updateFocusedStageWebView(Lcom/adobe/air/AndroidWebView;Z)V

    .line 287
    :cond_2
    and-int/lit8 v3, p2, 0x2

    if-ne v3, v0, :cond_4

    .line 289
    const/4 v0, 0x3

    .line 303
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 304
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    # getter for: Lcom/adobe/air/AndroidWebView;->mInternalReference:J
    invoke-static {v1}, Lcom/adobe/air/AndroidWebView;->access$200(Lcom/adobe/air/AndroidWebView;)J

    move-result-wide v4

    # invokes: Lcom/adobe/air/AndroidWebView;->dispatchFocusIn(JI)V
    invoke-static {v2, v4, v5, v0}, Lcom/adobe/air/AndroidWebView;->access$400(Lcom/adobe/air/AndroidWebView;JI)V

    goto :goto_0

    .line 292
    :cond_4
    and-int/lit8 v3, p2, 0x1

    if-eq v3, v1, :cond_3

    move v0, v1

    goto :goto_1

    .line 306
    :cond_5
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    # getter for: Lcom/adobe/air/AndroidWebView;->mInternalReference:J
    invoke-static {v1}, Lcom/adobe/air/AndroidWebView;->access$200(Lcom/adobe/air/AndroidWebView;)J

    move-result-wide v4

    # invokes: Lcom/adobe/air/AndroidWebView;->dispatchFocusOut(JI)V
    invoke-static {v2, v4, v5, v0}, Lcom/adobe/air/AndroidWebView;->access$500(Lcom/adobe/air/AndroidWebView;JI)V

    goto :goto_0
.end method

.method private setRealFocus(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 251
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-super {p0, p1, v1, v0}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 252
    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->invalidate()V

    .line 253
    invoke-direct {p0, p1, v1}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->dispatchFocusEvent(ZI)V

    .line 254
    return-void
.end method


# virtual methods
.method public clearChildFocus(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    .line 216
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->clearChildFocus(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    .line 223
    return-void

    .line 220
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    throw v0
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 233
    const-class v0, Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    # getter for: Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;
    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$100(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->removeView(Landroid/view/View;)V

    .line 237
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->setRealFocus(Z)V

    .line 247
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-super {p0}, Landroid/webkit/WebView;->clearFocus()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 345
    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 347
    const/4 v1, 0x0

    .line 349
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_2

    .line 351
    const/16 v1, 0x21

    .line 358
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 361
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    .line 362
    iput v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->mLastFocusDirection:I

    .line 363
    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebView;->setStageFocus(I)V

    .line 364
    const/4 v0, 0x1

    .line 374
    :cond_1
    :goto_1
    return v0

    .line 353
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    .line 355
    const/16 v1, 0x82

    goto :goto_0

    .line 368
    :cond_3
    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->this$0:Lcom/adobe/air/AndroidWebView;

    # getter for: Lcom/adobe/air/AndroidWebView;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;
    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$300(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->requestFocus()Z

    .line 182
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isInTextEditingMode()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 315
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 317
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 328
    :cond_0
    if-nez p2, :cond_1

    .line 329
    iget p2, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->mLastFocusDirection:I

    .line 331
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->mLastFocusDirection:I

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->dispatchFocusEvent(ZI)V

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    iput-boolean v2, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    .line 191
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_hasFocus:Z

    if-nez v0, :cond_0

    .line 194
    invoke-direct {p0, v2}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->setRealFocus(Z)V

    .line 199
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_focusedChildView:Landroid/view/View;

    .line 200
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    .line 207
    return-void

    .line 204
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->m_inRequestChildFocus:Z

    throw v0
.end method
