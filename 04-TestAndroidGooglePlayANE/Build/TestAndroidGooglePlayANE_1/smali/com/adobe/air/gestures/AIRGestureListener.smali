.class public Lcom/adobe/air/gestures/AIRGestureListener;
.super Ljava/lang/Object;
.source "AIRGestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AIRGestureListener"

.field private static final MAX_TOUCH_POINTS:I = 0x2

.field private static final MM_PER_INCH:F = 25.4f

.field private static final _FP_GESTURE_PAN_THRESHOLD_MM:F = 3.0f

.field private static final _FP_GESTURE_ROTATION_THRESHOLD_DEGREES:F = 15.0f

.field private static final _FP_GESTURE_SWIPE_PRIMARY_AXIS_MIN_MM:F = 10.0f

.field private static final _FP_GESTURE_SWIPE_SECONDARY_AXIS_MAX_MM:F = 5.0f

.field private static final _FP_GESTURE_ZOOM_PER_AXIS_THRESHOLD_MM:F = 3.0f

.field private static final _FP_GESTURE_ZOOM_THRESHOLD_MM:F = 8.0f

.field private static final kGestureAll:I = 0x8

.field private static final kGestureBegin:I = 0x2

.field private static final kGestureEnd:I = 0x4

.field private static final kGesturePan:I = 0x1

.field private static final kGestureRotate:I = 0x2

.field private static final kGestureSwipe:I = 0x5

.field private static final kGestureTwoFingerTap:I = 0x3

.field private static final kGestureUpdate:I = 0x1

.field private static final kGestureZoom:I

.field private static screenPPI:I


# instance fields
.field private mCheckForSwipe:Z

.field private mCouldBeTwoFingerTap:I

.field private mDidOccurTwoFingerGesture:Z

.field private mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

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

.field private mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

.field private mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

.field private mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

.field private mTwoFingerTapStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousAbsoluteRotation:F

    .line 63
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    .line 64
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    .line 65
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    .line 66
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    .line 67
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    .line 69
    iput v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocX:F

    .line 70
    iput v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocY:F

    .line 71
    iput v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocX:F

    .line 72
    iput v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocY:F

    .line 73
    iput v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocX:F

    .line 74
    iput v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocY:F

    .line 76
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mTwoFingerTapStartTime:J

    .line 77
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    .line 89
    iput v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    .line 90
    iput-object v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 91
    iput-object v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    .line 158
    iput-object p2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 160
    new-array v1, v4, [Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    iput-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 161
    :goto_0
    if-ge v0, v4, :cond_0

    .line 163
    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    new-instance v2, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-direct {v2, p0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;)V

    aput-object v2, v1, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-direct {v0, p0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;)V

    iput-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 167
    invoke-static {p1}, Lcom/adobe/air/SystemCapabilities;->GetScreenDPI(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    .line 168
    return-void
.end method

.method private distanceBetweenPoints(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 924
    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private endPanGesture()V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 325
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-eqz v0, :cond_0

    .line 331
    const/4 v1, 0x4

    .line 341
    iget v4, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocX:F

    .line 342
    iget v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocY:F

    move-object v0, p0

    move v3, v2

    move v7, v6

    move v9, v8

    move v10, v8

    move v11, v8

    .line 344
    invoke-direct/range {v0 .. v11}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    goto :goto_0
.end method

.method private endRotateGesture()V
    .locals 12

    .prologue
    const/4 v2, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 271
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    if-eqz v0, :cond_0

    .line 277
    const/4 v1, 0x4

    .line 287
    iget v4, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocX:F

    .line 288
    iget v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocY:F

    .line 290
    const/4 v3, 0x1

    move-object v0, p0

    move v7, v6

    move v9, v8

    move v10, v8

    move v11, v8

    invoke-direct/range {v0 .. v11}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    goto :goto_0
.end method

.method private endZoomGesture()V
    .locals 12

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 297
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_0

    .line 303
    const/4 v1, 0x4

    .line 313
    iget v4, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocX:F

    .line 314
    iget v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocY:F

    .line 316
    const/4 v3, 0x1

    move-object v0, p0

    move v7, v6

    move v9, v8

    move v10, v8

    move v11, v8

    invoke-direct/range {v0 .. v11}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    .line 317
    iput-boolean v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    .line 318
    iput-boolean v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    .line 319
    iput-boolean v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    goto :goto_0
.end method

.method private getRotation(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F
    .locals 10

    .prologue
    const-wide v8, 0x4066800000000000L    # 180.0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 866
    const/4 v0, 0x0

    .line 867
    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I
    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v1

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I
    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v2

    if-ne v1, v2, :cond_0

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v1

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I
    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 870
    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    div-double/2addr v0, v6

    .line 872
    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v4

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    mul-double/2addr v2, v8

    div-double/2addr v2, v6

    .line 874
    sub-double v0, v2, v0

    double-to-float v0, v0

    .line 877
    :cond_0
    return v0
.end method

.method private isPanGesture(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 891
    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 892
    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 894
    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 895
    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 897
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 898
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 899
    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 904
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
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-nez v0, :cond_4

    const/high16 v0, 0x40400000    # 3.0f

    sget v1, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x41cb3333    # 25.4f

    div-float/2addr v0, v1

    float-to-double v0, v0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_5

    .line 912
    :cond_4
    const/4 v0, 0x1

    .line 914
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeOnGestureListener(IIZFFFFFFFF)Z
.end method


# virtual methods
.method public endTwoFingerGesture()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 245
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 266
    :goto_0
    return v4

    .line 251
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 253
    iget-boolean v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mTwoFingerTapStartTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/adobe/air/gestures/AIRGestureListener;->onTwoFingerTap()Z

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/gestures/AIRGestureListener;->endRotateGesture()V

    .line 265
    invoke-direct {p0}, Lcom/adobe/air/gestures/AIRGestureListener;->endPanGesture()V

    goto :goto_0
.end method

.method public getCheckForSwipe()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    return v0
.end method

.method public getCouldBeTwoFingerTap()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    return v0
.end method

.method public getDownTouchPoint(I)Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;
    .locals 1

    .prologue
    .line 177
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v0, v0, p1

    .line 180
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

    .line 226
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    .line 227
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    .line 228
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    .line 229
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    .line 230
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    .line 231
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 696
    .line 700
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 702
    iget-object v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnDoubleClickListener(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 704
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 702
    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 24

    .prologue
    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v2}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 744
    const/4 v2, 0x1

    .line 826
    :goto_0
    return v2

    .line 748
    :cond_0
    const/4 v3, 0x1

    .line 749
    const/4 v4, 0x0

    .line 751
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v6

    .line 752
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v7

    .line 754
    const/high16 v2, 0x3f800000    # 1.0f

    .line 755
    const/high16 v9, 0x3f800000    # 1.0f

    .line 756
    const/4 v10, 0x0

    .line 757
    const/4 v11, 0x0

    .line 758
    const/4 v12, 0x0

    .line 760
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v18, v0

    .line 761
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v5

    float-to-double v14, v5

    .line 762
    sub-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    .line 763
    const-wide/16 v16, 0x0

    .line 764
    const-wide/16 v14, 0x0

    .line 765
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v5, v8, :cond_1

    .line 767
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v8

    sub-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v16, v0

    .line 768
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v8

    sub-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v14, v5

    .line 771
    :cond_1
    const-wide/16 v22, 0x0

    cmpl-double v5, v18, v22

    if-eqz v5, :cond_9

    .line 773
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-nez v5, :cond_2

    const-wide v18, 0x4039666660000000L    # 25.399999618530273

    mul-double v18, v18, v20

    sget v5, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-double v0, v5

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    const-wide/high16 v20, 0x4020000000000000L    # 8.0

    cmpl-double v5, v18, v20

    if-lez v5, :cond_8

    .line 775
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-nez v5, :cond_3

    .line 777
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    .line 778
    const/4 v3, 0x2

    .line 779
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    .line 784
    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v5, v8, :cond_7

    .line 786
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

    iget-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    if-nez v5, :cond_4

    const-wide v18, 0x4039666660000000L    # 25.399999618530273

    mul-double v16, v16, v18

    sget v5, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-double v0, v5

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    cmpl-double v5, v16, v18

    if-lez v5, :cond_5

    .line 789
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v5

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 790
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    .line 793
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

    iget-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    if-nez v5, :cond_6

    const-wide v16, 0x4039666660000000L    # 25.399999618530273

    mul-double v14, v14, v16

    sget v5, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-double v0, v5

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    cmpl-double v5, v14, v16

    if-lez v5, :cond_a

    .line 796
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v8

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 797
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    move v8, v2

    .line 812
    :goto_1
    move-object/from16 v0, p0

    iput v6, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocX:F

    .line 813
    move-object/from16 v0, p0

    iput v7, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocY:F

    .line 816
    const/4 v5, 0x1

    const/4 v13, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    .line 818
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 802
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v9

    move v8, v9

    .line 806
    goto :goto_1

    .line 823
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 826
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
    .line 724
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_0

    .line 727
    invoke-direct {p0}, Lcom/adobe/air/gestures/AIRGestureListener;->endZoomGesture()V

    .line 733
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 836
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    .line 851
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocX:F

    iget v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocY:F

    move-object v0, p0

    move v7, v6

    move v9, v8

    move v10, v8

    move v11, v8

    invoke-direct/range {v0 .. v11}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 17

    .prologue
    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v2}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 382
    const/4 v2, 0x1

    .line 629
    :goto_0
    return v2

    .line 393
    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    .line 394
    const/high16 v9, 0x3f800000    # 1.0f

    .line 395
    const/4 v10, 0x0

    .line 396
    const/4 v11, 0x0

    .line 397
    const/4 v12, 0x0

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 408
    const/4 v3, 0x1

    .line 410
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v6, v2, v4

    .line 411
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v7, v2, v4

    .line 416
    const/4 v2, 0x2

    new-array v14, v2, [Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 418
    const/4 v2, 0x0

    :goto_1
    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    .line 420
    new-instance v4, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v13, v15}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;FFI)V

    aput-object v4, v14, v2

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 423
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v14, v2

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I
    invoke-static {v2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v15

    .line 424
    const/4 v2, 0x1

    aget-object v2, v14, v2

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I
    invoke-static {v2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v16

    .line 426
    if-ltz v15, :cond_8

    const/4 v2, 0x2

    if-ge v15, v2, :cond_8

    if-ltz v16, :cond_8

    const/4 v2, 0x2

    move/from16 v0, v16

    if-ge v0, v2, :cond_8

    .line 432
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-nez v2, :cond_6

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v2, v2, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v4, v4, v16

    const/4 v5, 0x0

    aget-object v5, v14, v5

    const/4 v13, 0x1

    aget-object v13, v14, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5, v13}, Lcom/adobe/air/gestures/AIRGestureListener;->getRotation(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    .line 446
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 448
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_9

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float v2, v4, v2

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v2, v4

    .line 454
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    if-nez v4, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41700000    # 15.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 456
    :cond_3
    const/4 v4, 0x2

    .line 457
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    if-nez v5, :cond_4

    .line 459
    const/4 v3, 0x2

    .line 460
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    .line 461
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousAbsoluteRotation:F

    .line 462
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    .line 465
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousAbsoluteRotation:F

    sub-float v10, v2, v5

    .line 470
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v13, 0x43340000    # 180.0f

    cmpl-float v5, v5, v13

    if-lez v5, :cond_5

    .line 472
    const/4 v5, 0x0

    cmpl-float v5, v10, v5

    if-lez v5, :cond_a

    const/high16 v5, 0x43b40000    # 360.0f

    sub-float/2addr v5, v10

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v5, v10

    :goto_3
    move v10, v5

    .line 477
    :cond_5
    move-object/from16 v0, p0

    iput v2, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousAbsoluteRotation:F

    .line 478
    move-object/from16 v0, p0

    iput v6, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocX:F

    .line 479
    move-object/from16 v0, p0

    iput v7, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocY:F

    .line 482
    const/4 v5, 0x1

    const/4 v13, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    .line 485
    const/4 v10, 0x0

    .line 493
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    if-nez v2, :cond_8

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v2, v2, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v4, v4, v16

    const/4 v5, 0x0

    aget-object v5, v14, v5

    const/4 v11, 0x1

    aget-object v11, v14, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5, v11}, Lcom/adobe/air/gestures/AIRGestureListener;->isPanGesture(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 501
    const/4 v4, 0x1

    .line 502
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-nez v2, :cond_7

    .line 504
    const/4 v3, 0x2

    .line 505
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    .line 506
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    .line 509
    :cond_7
    const/high16 v2, -0x40800000    # -1.0f

    mul-float v11, v2, p3

    .line 510
    const/high16 v2, -0x40800000    # -1.0f

    mul-float v12, v2, p4

    .line 511
    move-object/from16 v0, p0

    iput v6, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocX:F

    .line 512
    move-object/from16 v0, p0

    iput v7, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocY:F

    .line 517
    const/4 v5, 0x1

    const/4 v13, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    .line 629
    :cond_8
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 448
    :cond_9
    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v2, v4

    goto/16 :goto_2

    .line 472
    :cond_a
    const/high16 v5, 0x43b40000    # 360.0f

    add-float/2addr v5, v10

    goto :goto_3

    .line 525
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-eqz v2, :cond_8

    .line 528
    invoke-direct/range {p0 .. p0}, Lcom/adobe/air/gestures/AIRGestureListener;->endPanGesture()V

    .line 529
    const/4 v2, 0x0

    aget-object v2, v14, v2

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {v2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    const/4 v3, 0x0

    aget-object v3, v14, v3

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {v3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    const/4 v4, 0x0

    aget-object v4, v14, v4

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I
    invoke-static {v4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/adobe/air/gestures/AIRGestureListener;->setDownTouchPoint(FFI)V

    .line 530
    const/4 v2, 0x1

    aget-object v2, v14, v2

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {v2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v14, v3

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {v3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v14, v4

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I
    invoke-static {v4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/adobe/air/gestures/AIRGestureListener;->setDownTouchPoint(FFI)V

    goto :goto_4

    .line 540
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 542
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 544
    if-ltz v2, :cond_8

    const/4 v3, 0x2

    if-ge v2, v3, :cond_8

    .line 552
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    if-eqz v3, :cond_8

    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 559
    const/4 v13, 0x0

    .line 561
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v4, v4, v2

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {v4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v4

    sub-float v4, v3, v4

    .line 562
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v2, v5, v2

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {v2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    sub-float v2, v3, v2

    .line 566
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x41cb3333    # 25.4f

    mul-float/2addr v3, v5

    sget v5, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x41200000    # 10.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_f

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x41cb3333    # 25.4f

    mul-float/2addr v3, v5

    sget v5, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_f

    .line 568
    const/4 v3, 0x1

    .line 569
    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-lez v2, :cond_e

    const/high16 v2, 0x3f800000    # 1.0f

    .line 570
    :goto_5
    const/4 v12, 0x0

    .line 571
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    sub-long/2addr v6, v14

    long-to-float v5, v6

    div-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v13, v4, v5

    move v11, v2

    move v2, v3

    .line 586
    :goto_6
    if-eqz v2, :cond_8

    .line 590
    const/16 v3, 0x8

    .line 591
    const/4 v4, 0x5

    .line 594
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 595
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 597
    const/4 v2, 0x0

    cmpg-float v2, v13, v2

    if-gez v2, :cond_d

    .line 598
    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v13, v2

    .line 601
    :cond_d
    const/4 v5, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    .line 603
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    goto/16 :goto_4

    .line 569
    :cond_e
    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_5

    .line 573
    :cond_f
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x41cb3333    # 25.4f

    mul-float/2addr v3, v5

    sget v5, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x41200000    # 10.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_11

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x41cb3333    # 25.4f

    mul-float/2addr v3, v4

    sget v4, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x40a00000    # 5.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_11

    .line 575
    const/4 v3, 0x1

    .line 576
    const/4 v11, 0x0

    .line 577
    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_10

    const/high16 v2, 0x3f800000    # 1.0f

    .line 578
    :goto_7
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    sub-long/2addr v6, v12

    long-to-float v5, v6

    div-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v13, v4, v5

    move v12, v2

    move v2, v3

    goto :goto_6

    .line 577
    :cond_10
    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_7

    .line 583
    :cond_11
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 686
    const/4 v0, 0x1

    return v0
.end method

.method public onTwoFingerTap()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 650
    .line 652
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 670
    :goto_0
    return v12

    .line 655
    :cond_0
    const/16 v1, 0x8

    .line 656
    const/4 v2, 0x3

    .line 661
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {v0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    iget-object v4, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {v4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v4

    add-float/2addr v0, v4

    div-float v4, v0, v7

    .line 662
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {v0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    iget-object v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    # getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {v5}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v5

    add-float/2addr v0, v5

    div-float v5, v0, v7

    move-object v0, p0

    move v7, v6

    move v9, v8

    move v10, v8

    move v11, v8

    .line 665
    invoke-direct/range {v0 .. v11}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v12

    .line 668
    :goto_1
    iput v3, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    move v12, v0

    .line 670
    goto :goto_0

    :cond_1
    move v0, v3

    .line 665
    goto :goto_1
.end method

.method public setCheckForSwipe(Z)V
    .locals 0

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    .line 241
    return-void
.end method

.method public setCouldBeTwoFingerTap(I)V
    .locals 2

    .prologue
    .line 200
    iput p1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    .line 202
    if-nez p1, :cond_0

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mTwoFingerTapStartTime:J

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    .line 207
    :cond_0
    return-void
.end method

.method public setDownTouchPoint(FFI)V
    .locals 1

    .prologue
    .line 192
    if-ltz p3, :cond_0

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v0, v0, p3

    # invokes: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->assign(FFI)V
    invoke-static {v0, p1, p2, p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$000(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;FFI)V

    .line 196
    :cond_0
    return-void
.end method

.method public setPrimaryPointOfTwoFingerTap(FFI)V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;FFI)V

    iput-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 222
    return-void
.end method

.method public setSecondaryPointOfTwoFingerTap(FFI)V
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;FFI)V

    iput-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 217
    return-void
.end method
