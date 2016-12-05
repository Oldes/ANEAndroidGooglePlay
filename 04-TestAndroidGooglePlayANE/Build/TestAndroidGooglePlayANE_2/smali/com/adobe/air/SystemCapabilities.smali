.class public Lcom/adobe/air/SystemCapabilities;
.super Ljava/lang/Object;
.source "SystemCapabilities.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SystemCapabilities"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetBitsPerPixel(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 111
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 112
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/graphics/PixelFormat;

    invoke-direct {v1}, Landroid/graphics/PixelFormat;-><init>()V

    .line 114
    invoke-virtual {v0}, Landroid/view/Display;->getPixelFormat()I

    move-result v0

    invoke-static {v0, v1}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 115
    iget v0, v1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    return v0
.end method

.method public static GetRealScreenHRes(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 35
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 36
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 37
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 39
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 44
    :goto_0
    iget v0, v1, Landroid/graphics/Point;->x:I

    return v0

    .line 42
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public static GetRealScreenVRes(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 60
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 61
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 64
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 70
    :goto_0
    iget v0, v1, Landroid/graphics/Point;->y:I

    return v0

    .line 67
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public static GetScreenDPI(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 94
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SCH-I800"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SPH-P100"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SC-01C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GT-P1000"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GT-P1010"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GT-P1000R"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GT-P1000M"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SHW-M180W"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SHW-M180L"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SHW-M180K"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SHW-M180S"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SGH-I987"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SGH-t849"

    aput-object v2, v0, v1

    .line 97
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 98
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 99
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 100
    const/16 v0, 0xa0

    .line 106
    :goto_0
    return v0

    .line 102
    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 103
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 104
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 106
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0
.end method

.method public static GetScreenHRes(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 22
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 23
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 24
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 27
    iget v0, v1, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public static GetScreenVRes(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 49
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 50
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 55
    iget v0, v1, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public static HasTrackBall(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 130
    iget v0, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
