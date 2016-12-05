.class public Lcom/adobe/air/wand/view/GestureListener;
.super Ljava/lang/Object;
.source "GestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/view/GestureListener$TouchPoint;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GestureListener"

.field private static final MAX_TOUCH_POINTS:I = 0x2

.field private static final MM_PER_INCH:F = 25.4f

.field private static final _FP_GESTURE_PAN_THRESHOLD_MM:F = 3.0f

.field private static final _FP_GESTURE_ROTATION_THRESHOLD_DEGREES:F = 15.0f

.field private static final _FP_GESTURE_SWIPE_PRIMARY_AXIS_MIN_MM:F = 10.0f

.field private static final _FP_GESTURE_SWIPE_SECONDARY_AXIS_MAX_MM:F = 5.0f

.field private static final _FP_GESTURE_ZOOM_PER_AXIS_THRESHOLD_MM:F = 3.0f

.field private static final _FP_GESTURE_ZOOM_THRESHOLD_MM:F = 8.0f

.field public static final kGestureAll:I = 0x8

.field public static final kGestureBegin:I = 0x2

.field public static final kGestureEnd:I = 0x4

.field public static final kGesturePan:I = 0x1

.field public static final kGestureRotate:I = 0x2

.field public static final kGestureSwipe:I = 0x4

.field public static final kGestureTap:I = 0x3

.field public static final kGestureUpdate:I = 0x1

.field public static final kGestureZoom:I

.field private static screenPPI:I


# instance fields
.field private mCheckForSwipe:Z

.field private mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

.field private mCouldBeTwoFingerTap:I

.field private mDidOccurTwoFingerGesture:Z

.field private mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

.field private mInPanTransformGesture:Z

.field private mInRotateTransformGesture:Z

.field private mInZoomTransformGesture:Z

.field private mInZoomTransformGestureX:Z

.field private mInZoomTransformGestureY:Z

.field private mPreviousAbsoluteRotation:F

.field private mPreviousPanLocX:F

.field private mPreviousPanLocY:F

.field private mPreviousRotateLocX:F

.field private mPreviousRotateLocY:F

.field private mPreviousZoomLocX:F

.field private mPreviousZoomLocY:F

.field private mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

.field private mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

.field private mTwoFingerTapStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adobe/air/wand/view/CompanionView;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousAbsoluteRotation:F

    .line 62
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    .line 63
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    .line 64
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureX:Z

    .line 65
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureY:Z

    .line 66
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    .line 68
    iput v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocX:F

    .line 69
    iput v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocY:F

    .line 70
    iput v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocX:F

    .line 71
    iput v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocY:F

    .line 72
    iput v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocX:F

    .line 73
    iput v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocY:F

    .line 75
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/adobe/air/wand/view/GestureListener;->mTwoFingerTapStartTime:J

    .line 76
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mDidOccurTwoFingerGesture:Z

    .line 78
    iput-object v4, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    .line 88
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCouldBeTwoFingerTap:I

    .line 89
    iput-object v4, p0, Lcom/adobe/air/wand/view/GestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    .line 90
    iput-object v4, p0, Lcom/adobe/air/wand/view/GestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCheckForSwipe:Z

    .line 141
    iput-object p2, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    .line 143
    new-array v1, v5, [Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    iput-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    .line 144
    :goto_0
    if-ge v0, v5, :cond_0

    .line 146
    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    new-instance v2, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    invoke-direct {v2, p0}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;-><init>(Lcom/adobe/air/wand/view/GestureListener;)V

    aput-object v2, v1, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    invoke-direct {v0, p0}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;-><init>(Lcom/adobe/air/wand/view/GestureListener;)V

    iput-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 151
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    .line 152
    return-void
.end method

.method private endPanGesture()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 308
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    if-eqz v0, :cond_0

    .line 314
    const/4 v1, 0x4

    .line 324
    iget v4, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocX:F

    .line 325
    iget v5, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocY:F

    .line 327
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    move v3, v2

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-virtual/range {v0 .. v10}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    goto :goto_0
.end method

.method private endRotateGesture()V
    .locals 11

    .prologue
    const/4 v2, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 254
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    if-eqz v0, :cond_0

    .line 260
    const/4 v1, 0x4

    .line 270
    iget v4, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocX:F

    .line 271
    iget v5, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocY:F

    .line 273
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v3, 0x1

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-virtual/range {v0 .. v10}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    goto :goto_0
.end method

.method private endZoomGesture()V
    .locals 11

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_0

    .line 286
    const/4 v1, 0x4

    .line 296
    iget v4, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocX:F

    .line 297
    iget v5, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocY:F

    .line 299
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v3, 0x1

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-virtual/range {v0 .. v10}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 300
    iput-boolean v2, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    .line 301
    iput-boolean v2, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureX:Z

    .line 302
    iput-boolean v2, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureY:Z

    goto :goto_0
.end method

.method private getRotation(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F
    .locals 10

    .prologue
    const-wide v8, 0x4066800000000000L    # 180.0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 825
    const/4 v0, 0x0

    .line 826
    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I
    invoke-static {p1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v1

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I
    invoke-static {p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v2

    if-ne v1, v2, :cond_0

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I
    invoke-static {p2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v1

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I
    invoke-static {p4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 829
    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {p2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v0

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {p1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {p2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v2

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {p1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    div-double/2addr v0, v6

    .line 831
    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {p4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v2

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {p4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v4

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    mul-double/2addr v2, v8

    div-double/2addr v2, v6

    .line 833
    sub-double v0, v2, v0

    double-to-float v0, v0

    .line 836
    :cond_0
    return v0
.end method

.method private isPanGesture(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 850
    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v0

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {p1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 851
    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v1

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {p1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 853
    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {p4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v2

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {p2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 854
    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {p4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v3

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {p2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 856
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 857
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 858
    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 863
    cmpl-float v6, v0, v7

    if-ltz v6, :cond_0

    cmpl-float v6, v2, v7

    if-gez v6, :cond_1

    :cond_0
    cmpg-float v0, v0, v7

    if-gtz v0, :cond_5

    cmpg-float v0, v2, v7

    if-gtz v0, :cond_5

    :cond_1
    cmpl-float v0, v1, v7

    if-ltz v0, :cond_2

    cmpl-float v0, v3, v7

    if-gez v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v7

    if-gtz v0, :cond_5

    cmpg-float v0, v3, v7

    if-gtz v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    if-nez v0, :cond_4

    const/high16 v0, 0x40400000    # 3.0f

    sget v1, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x41cb3333    # 25.4f

    div-float/2addr v0, v1

    float-to-double v0, v0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_5

    .line 871
    :cond_4
    const/4 v0, 0x1

    .line 873
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public endTwoFingerGesture()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 228
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 249
    :goto_0
    return v4

    .line 234
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 236
    iget-boolean v2, p0, Lcom/adobe/air/wand/view/GestureListener;->mDidOccurTwoFingerGesture:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/adobe/air/wand/view/GestureListener;->mCouldBeTwoFingerTap:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lcom/adobe/air/wand/view/GestureListener;->mTwoFingerTapStartTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/adobe/air/wand/view/GestureListener;->onTwoFingerTap()Z

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/wand/view/GestureListener;->endRotateGesture()V

    .line 248
    invoke-direct {p0}, Lcom/adobe/air/wand/view/GestureListener;->endPanGesture()V

    goto :goto_0
.end method

.method public getCheckForSwipe()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCheckForSwipe:Z

    return v0
.end method

.method public getCouldBeTwoFingerTap()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCouldBeTwoFingerTap:I

    return v0
.end method

.method public getDownTouchPoint(I)Lcom/adobe/air/wand/view/GestureListener$TouchPoint;
    .locals 1

    .prologue
    .line 161
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v0, v0, p1

    .line 164
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayStartNewTransformGesture()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    .line 210
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    .line 211
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureX:Z

    .line 212
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureY:Z

    .line 213
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    .line 214
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 878
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 24

    .prologue
    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v2}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 703
    const/4 v2, 0x1

    .line 785
    :goto_0
    return v2

    .line 707
    :cond_0
    const/4 v3, 0x1

    .line 708
    const/4 v4, 0x0

    .line 710
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v6

    .line 711
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v7

    .line 713
    const/high16 v2, 0x3f800000    # 1.0f

    .line 714
    const/high16 v9, 0x3f800000    # 1.0f

    .line 715
    const/4 v10, 0x0

    .line 716
    const/4 v11, 0x0

    .line 717
    const/4 v12, 0x0

    .line 719
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v18, v0

    .line 720
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v5

    float-to-double v14, v5

    .line 721
    sub-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    .line 722
    const-wide/16 v16, 0x0

    .line 723
    const-wide/16 v14, 0x0

    .line 724
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v5, v8, :cond_1

    .line 726
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v8

    sub-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v16, v0

    .line 727
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v8

    sub-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v14, v5

    .line 730
    :cond_1
    const-wide/16 v22, 0x0

    cmpl-double v5, v18, v22

    if-eqz v5, :cond_9

    .line 732
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    if-nez v5, :cond_2

    const-wide v18, 0x4039666660000000L    # 25.399999618530273

    mul-double v18, v18, v20

    sget v5, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-double v0, v5

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    const-wide/high16 v20, 0x4020000000000000L    # 8.0

    cmpl-double v5, v18, v20

    if-lez v5, :cond_8

    .line 734
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    if-nez v5, :cond_3

    .line 736
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    .line 737
    const/4 v3, 0x2

    .line 738
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/adobe/air/wand/view/GestureListener;->mDidOccurTwoFingerGesture:Z

    .line 743
    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v5, v8, :cond_7

    .line 745
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v5

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v5

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureX:Z

    if-nez v5, :cond_4

    const-wide v18, 0x4039666660000000L    # 25.399999618530273

    mul-double v16, v16, v18

    sget v5, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-double v0, v5

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    cmpl-double v5, v16, v18

    if-lez v5, :cond_5

    .line 748
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v5

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 749
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureX:Z

    .line 752
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v5

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v5

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureY:Z

    if-nez v5, :cond_6

    const-wide v16, 0x4039666660000000L    # 25.399999618530273

    mul-double v14, v14, v16

    sget v5, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-double v0, v5

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    cmpl-double v5, v14, v16

    if-lez v5, :cond_a

    .line 755
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v8

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 756
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureY:Z

    move v8, v2

    .line 771
    :goto_1
    move-object/from16 v0, p0

    iput v6, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocX:F

    .line 772
    move-object/from16 v0, p0

    iput v7, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocY:F

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v12}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 777
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 761
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v9

    move v8, v9

    .line 765
    goto :goto_1

    .line 782
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 785
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    move v8, v2

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_0

    .line 686
    invoke-direct {p0}, Lcom/adobe/air/wand/view/GestureListener;->endZoomGesture()V

    .line 692
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 795
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    .line 810
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocX:F

    iget v5, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocY:F

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-virtual/range {v0 .. v10}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 16

    .prologue
    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 365
    const/4 v1, 0x1

    .line 605
    :goto_0
    return v1

    .line 376
    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    .line 377
    const/high16 v8, 0x3f800000    # 1.0f

    .line 378
    const/4 v9, 0x0

    .line 379
    const/4 v10, 0x0

    .line 380
    const/4 v11, 0x0

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 391
    const/4 v2, 0x1

    .line 393
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v5, v1, v3

    .line 394
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v6, v1, v3

    .line 399
    const/4 v1, 0x2

    new-array v12, v1, [Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    .line 401
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    .line 403
    new-instance v3, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v13, v14}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;-><init>(Lcom/adobe/air/wand/view/GestureListener;FFI)V

    aput-object v3, v12, v1

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 406
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v12, v1

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I
    invoke-static {v1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v13

    .line 407
    const/4 v1, 0x1

    aget-object v1, v12, v1

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I
    invoke-static {v1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v14

    .line 409
    if-ltz v13, :cond_8

    const/4 v1, 0x2

    if-ge v13, v1, :cond_8

    if-ltz v14, :cond_8

    const/4 v1, 0x2

    if-ge v14, v1, :cond_8

    .line 415
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    if-nez v1, :cond_6

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v1, v1, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v3, v3, v14

    const/4 v4, 0x0

    aget-object v4, v12, v4

    const/4 v15, 0x1

    aget-object v15, v12, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v4, v15}, Lcom/adobe/air/wand/view/GestureListener;->getRotation(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v1

    .line 429
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 431
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_9

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float v1, v3, v1

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v1, v3

    .line 437
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    if-nez v3, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41700000    # 15.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 439
    :cond_3
    const/4 v3, 0x2

    .line 440
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    if-nez v4, :cond_4

    .line 442
    const/4 v2, 0x2

    .line 443
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    .line 444
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousAbsoluteRotation:F

    .line 445
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/adobe/air/wand/view/GestureListener;->mDidOccurTwoFingerGesture:Z

    .line 448
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousAbsoluteRotation:F

    sub-float v9, v1, v4

    .line 453
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v15, 0x43340000    # 180.0f

    cmpl-float v4, v4, v15

    if-lez v4, :cond_5

    .line 455
    const/4 v4, 0x0

    cmpl-float v4, v9, v4

    if-lez v4, :cond_a

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float/2addr v4, v9

    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v4, v9

    :goto_3
    move v9, v4

    .line 460
    :cond_5
    move-object/from16 v0, p0

    iput v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousAbsoluteRotation:F

    .line 461
    move-object/from16 v0, p0

    iput v5, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocX:F

    .line 462
    move-object/from16 v0, p0

    iput v6, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocY:F

    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v11}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 468
    const/4 v9, 0x0

    .line 476
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    if-nez v1, :cond_8

    .line 479
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v1, v1, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v3, v3, v14

    const/4 v4, 0x0

    aget-object v4, v12, v4

    const/4 v10, 0x1

    aget-object v10, v12, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v4, v10}, Lcom/adobe/air/wand/view/GestureListener;->isPanGesture(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 484
    const/4 v3, 0x1

    .line 485
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    if-nez v1, :cond_7

    .line 487
    const/4 v2, 0x2

    .line 488
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    .line 489
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mDidOccurTwoFingerGesture:Z

    .line 492
    :cond_7
    const/high16 v1, -0x40800000    # -1.0f

    mul-float v10, v1, p3

    .line 493
    const/high16 v1, -0x40800000    # -1.0f

    mul-float v11, v1, p4

    .line 494
    move-object/from16 v0, p0

    iput v5, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocX:F

    .line 495
    move-object/from16 v0, p0

    iput v6, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocY:F

    .line 500
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v11}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 605
    :cond_8
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 431
    :cond_9
    const/high16 v3, 0x43b40000    # 360.0f

    add-float/2addr v1, v3

    goto/16 :goto_2

    .line 455
    :cond_a
    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v4, v9

    goto :goto_3

    .line 508
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    if-eqz v1, :cond_8

    .line 511
    invoke-direct/range {p0 .. p0}, Lcom/adobe/air/wand/view/GestureListener;->endPanGesture()V

    .line 512
    const/4 v1, 0x0

    aget-object v1, v12, v1

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {v1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v1

    const/4 v2, 0x0

    aget-object v2, v12, v2

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {v2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v2

    const/4 v3, 0x0

    aget-object v3, v12, v3

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I
    invoke-static {v3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/air/wand/view/GestureListener;->setDownTouchPoint(FFI)V

    .line 513
    const/4 v1, 0x1

    aget-object v1, v12, v1

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {v1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v12, v2

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {v2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v12, v3

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->pid:I
    invoke-static {v3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/air/wand/view/GestureListener;->setDownTouchPoint(FFI)V

    goto :goto_4

    .line 523
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 525
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 527
    if-ltz v1, :cond_8

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    .line 535
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/adobe/air/wand/view/GestureListener;->mCheckForSwipe:Z

    if-eqz v2, :cond_8

    .line 537
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 543
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v3, v3, v1

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {v3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v3

    sub-float v3, v2, v3

    .line 544
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v1, v4, v1

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {v1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v1

    sub-float v1, v2, v1

    .line 548
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x41cb3333    # 25.4f

    mul-float/2addr v2, v4

    sget v4, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_e

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x41cb3333    # 25.4f

    mul-float/2addr v2, v4

    sget v4, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x40a00000    # 5.0f

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_e

    .line 550
    const/4 v2, 0x1

    .line 551
    const/4 v1, 0x0

    cmpl-float v1, v3, v1

    if-lez v1, :cond_d

    const/high16 v1, 0x3f800000    # 1.0f

    .line 552
    :goto_5
    const/4 v11, 0x0

    move v10, v1

    move v1, v2

    .line 566
    :goto_6
    if-eqz v1, :cond_8

    .line 570
    const/16 v2, 0x8

    .line 571
    const/4 v3, 0x4

    .line 574
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 575
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 577
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v11}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 579
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mCheckForSwipe:Z

    goto/16 :goto_4

    .line 551
    :cond_d
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_5

    .line 554
    :cond_e
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x41cb3333    # 25.4f

    mul-float/2addr v2, v4

    sget v4, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x41cb3333    # 25.4f

    mul-float/2addr v2, v3

    sget v3, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_10

    .line 556
    const/4 v2, 0x1

    .line 557
    const/4 v10, 0x0

    .line 558
    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_f

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_7
    move v11, v1

    move v1, v2

    goto :goto_6

    :cond_f
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_7

    .line 563
    :cond_10
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 613
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x1

    return v0
.end method

.method public onTwoFingerTap()Z
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 626
    const/4 v11, 0x1

    .line 628
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move v0, v11

    .line 646
    :goto_0
    return v0

    .line 631
    :cond_0
    const/16 v1, 0x8

    .line 632
    const/4 v2, 0x3

    .line 637
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {v0}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v0

    iget-object v4, p0, Lcom/adobe/air/wand/view/GestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->x:F
    invoke-static {v4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v4

    add-float/2addr v0, v4

    div-float v4, v0, v7

    .line 638
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {v0}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v0

    iget-object v5, p0, Lcom/adobe/air/wand/view/GestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    # getter for: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->y:F
    invoke-static {v5}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v5

    add-float/2addr v0, v5

    div-float v5, v0, v7

    .line 641
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-virtual/range {v0 .. v10}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 644
    iput v3, p0, Lcom/adobe/air/wand/view/GestureListener;->mCouldBeTwoFingerTap:I

    move v0, v11

    .line 646
    goto :goto_0
.end method

.method public setCheckForSwipe(Z)V
    .locals 0

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCheckForSwipe:Z

    .line 224
    return-void
.end method

.method public setCouldBeTwoFingerTap(I)V
    .locals 2

    .prologue
    .line 184
    iput p1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCouldBeTwoFingerTap:I

    .line 186
    if-nez p1, :cond_0

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mTwoFingerTapStartTime:J

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mDidOccurTwoFingerGesture:Z

    .line 190
    :cond_0
    return-void
.end method

.method public setDownTouchPoint(FFI)V
    .locals 1

    .prologue
    .line 176
    if-ltz p3, :cond_0

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v0, v0, p3

    # invokes: Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->assign(FFI)V
    invoke-static {v0, p1, p2, p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$000(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;FFI)V

    .line 180
    :cond_0
    return-void
.end method

.method public setPrimaryPointOfTwoFingerTap(FFI)V
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;-><init>(Lcom/adobe/air/wand/view/GestureListener;FFI)V

    iput-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    .line 205
    return-void
.end method

.method public setSecondaryPointOfTwoFingerTap(FFI)V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;-><init>(Lcom/adobe/air/wand/view/GestureListener;FFI)V

    iput-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    .line 200
    return-void
.end method
