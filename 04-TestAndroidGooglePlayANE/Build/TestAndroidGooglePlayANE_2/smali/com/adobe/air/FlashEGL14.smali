.class public Lcom/adobe/air/FlashEGL14;
.super Ljava/lang/Object;
.source "FlashEGL14.java"

# interfaces
.implements Lcom/adobe/air/FlashEGL;


# static fields
.field private static EGL_BUFFER_DESTROYED:I = 0x0

.field private static EGL_BUFFER_PRESERVED:I = 0x0

.field private static EGL_CONTEXT_CLIENT_VERSION:I = 0x0

.field private static EGL_COVERAGE_BUFFERS_NV:I = 0x0

.field private static EGL_COVERAGE_SAMPLES_NV:I = 0x0

.field private static EGL_OPENGL_ES2_BIT:I = 0x0

.field private static EGL_SWAP_BEHAVIOR:I = 0x0

.field private static final MAX_CONFIGS:I = 0x64

.field private static TAG:Ljava/lang/String;

.field private static cfgAttrs:[I

.field private static fbPBufferSurfaceAttrs:[I

.field private static fbWindowSurfaceDefAttrs:[I

.field private static fbWindowSurfaceOffAttrs:[I

.field private static fbWindowSurfaceOnAttrs:[I


# instance fields
.field private kAlphaBits:I

.field private kBlueBits:I

.field private kColorBits:I

.field private kConfigId:I

.field private kCsaaSamp:I

.field private kDepthBits:I

.field private kGreenBits:I

.field private kMsaaSamp:I

.field private kNumElements:I

.field private kRedBits:I

.field private kStencilBits:I

.field private kSurfaceTypes:I

.field private kSwapPreserve:I

.field private kSwapPreserveDefault:I

.field private kSwapPreserveOff:I

.field private kSwapPreserveOn:I

.field private mEgl:Landroid/opengl/EGL14;

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglConfigCount:I

.field private mEglConfigList:[Landroid/opengl/EGLConfig;

.field volatile mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglPbufferSurface:Landroid/opengl/EGLSurface;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private mEglVersion:[I

.field private mEglWindowSurface:Landroid/opengl/EGLSurface;

.field private mIsARGBSurface:Z

.field private mIsBufferPreserve:Z

.field private mIsES3Device:Z

.field private mIsGPUOOM:Z

.field private mPbufferConfigCount:I

.field private mPixmapConfigCount:I

.field private mWindowConfigCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/16 v5, 0x3038

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    const-string v0, "FlashEGL14"

    sput-object v0, Lcom/adobe/air/FlashEGL14;->TAG:Ljava/lang/String;

    .line 33
    const/16 v0, 0x3098

    sput v0, Lcom/adobe/air/FlashEGL14;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 34
    const/4 v0, 0x4

    sput v0, Lcom/adobe/air/FlashEGL14;->EGL_OPENGL_ES2_BIT:I

    .line 36
    const/16 v0, 0x30e0

    sput v0, Lcom/adobe/air/FlashEGL14;->EGL_COVERAGE_BUFFERS_NV:I

    .line 37
    const/16 v0, 0x30e1

    sput v0, Lcom/adobe/air/FlashEGL14;->EGL_COVERAGE_SAMPLES_NV:I

    .line 40
    const/16 v0, 0x3093

    sput v0, Lcom/adobe/air/FlashEGL14;->EGL_SWAP_BEHAVIOR:I

    .line 41
    const/16 v0, 0x3094

    sput v0, Lcom/adobe/air/FlashEGL14;->EGL_BUFFER_PRESERVED:I

    .line 42
    const/16 v0, 0x3095

    sput v0, Lcom/adobe/air/FlashEGL14;->EGL_BUFFER_DESTROYED:I

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [I

    const/16 v1, 0x3033

    aput v1, v0, v3

    aput v6, v0, v4

    const/16 v1, 0x3025

    aput v1, v0, v7

    const/4 v1, 0x3

    aput v6, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v6, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/adobe/air/FlashEGL14;->EGL_OPENGL_ES2_BIT:I

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v5, v0, v1

    sput-object v0, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/adobe/air/FlashEGL14;->EGL_SWAP_BEHAVIOR:I

    aput v1, v0, v3

    sget v1, Lcom/adobe/air/FlashEGL14;->EGL_BUFFER_PRESERVED:I

    aput v1, v0, v4

    aput v5, v0, v7

    sput-object v0, Lcom/adobe/air/FlashEGL14;->fbWindowSurfaceOnAttrs:[I

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/adobe/air/FlashEGL14;->EGL_SWAP_BEHAVIOR:I

    aput v1, v0, v3

    sget v1, Lcom/adobe/air/FlashEGL14;->EGL_BUFFER_DESTROYED:I

    aput v1, v0, v4

    aput v5, v0, v7

    sput-object v0, Lcom/adobe/air/FlashEGL14;->fbWindowSurfaceOffAttrs:[I

    .line 75
    new-array v0, v4, [I

    aput v5, v0, v3

    sput-object v0, Lcom/adobe/air/FlashEGL14;->fbWindowSurfaceDefAttrs:[I

    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/air/FlashEGL14;->fbPBufferSurfaceAttrs:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3057
        0x40
        0x3056
        0x40
        0x3038
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Lcom/adobe/air/FlashEGL14;->kSurfaceTypes:I

    iput v3, p0, Lcom/adobe/air/FlashEGL14;->kConfigId:I

    iput v4, p0, Lcom/adobe/air/FlashEGL14;->kRedBits:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/adobe/air/FlashEGL14;->kGreenBits:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/adobe/air/FlashEGL14;->kBlueBits:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/adobe/air/FlashEGL14;->kAlphaBits:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/adobe/air/FlashEGL14;->kColorBits:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/adobe/air/FlashEGL14;->kDepthBits:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/adobe/air/FlashEGL14;->kStencilBits:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/adobe/air/FlashEGL14;->kMsaaSamp:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/adobe/air/FlashEGL14;->kCsaaSamp:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/adobe/air/FlashEGL14;->kSwapPreserve:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/adobe/air/FlashEGL14;->kNumElements:I

    .line 50
    iput v1, p0, Lcom/adobe/air/FlashEGL14;->kSwapPreserveDefault:I

    iput v3, p0, Lcom/adobe/air/FlashEGL14;->kSwapPreserveOn:I

    iput v4, p0, Lcom/adobe/air/FlashEGL14;->kSwapPreserveOff:I

    .line 847
    iput-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    .line 848
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 849
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 850
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    .line 851
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    .line 852
    iput-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 853
    iput-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    .line 854
    iput-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglVersion:[I

    .line 855
    iput v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigCount:I

    .line 856
    iput v1, p0, Lcom/adobe/air/FlashEGL14;->mWindowConfigCount:I

    .line 857
    iput v1, p0, Lcom/adobe/air/FlashEGL14;->mPixmapConfigCount:I

    .line 858
    iput v1, p0, Lcom/adobe/air/FlashEGL14;->mPbufferConfigCount:I

    .line 859
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    .line 860
    iput-boolean v1, p0, Lcom/adobe/air/FlashEGL14;->mIsARGBSurface:Z

    .line 861
    iput-boolean v1, p0, Lcom/adobe/air/FlashEGL14;->mIsGPUOOM:Z

    .line 862
    iput-boolean v1, p0, Lcom/adobe/air/FlashEGL14;->mIsBufferPreserve:Z

    .line 863
    iput-boolean v1, p0, Lcom/adobe/air/FlashEGL14;->mIsES3Device:Z

    return-void
.end method

.method private XX(II)I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kNumElements:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method private checkEglError(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/16 v5, 0x3000

    .line 807
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .line 808
    if-eq v0, v5, :cond_3

    .line 810
    iget-boolean v1, p0, Lcom/adobe/air/FlashEGL14;->mIsGPUOOM:Z

    if-nez v1, :cond_3

    const/16 v1, 0x3003

    if-ne v0, v1, :cond_3

    .line 815
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v1, v2, :cond_1

    .line 817
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 818
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    .line 819
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    .line 820
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 821
    if-eq v1, v5, :cond_0

    .line 824
    :cond_0
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    .line 825
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 826
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    .line 827
    if-eq v1, v5, :cond_1

    .line 832
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v1, v2, :cond_2

    .line 834
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 835
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 836
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    .line 837
    if-eq v1, v5, :cond_2

    .line 841
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/air/FlashEGL14;->mIsGPUOOM:Z

    .line 844
    :cond_3
    return v0
.end method


# virtual methods
.method public ChooseConfig(Landroid/opengl/EGLDisplay;[I[Landroid/opengl/EGLConfig;I[I)Z
    .locals 10

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL14;->IsEmulator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    .line 188
    :goto_0
    return v0

    .line 144
    :cond_0
    const/4 v0, 0x1

    new-array v4, v0, [I

    .line 145
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/EGL14;->eglGetConfigs(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;II[II)Z

    .line 146
    const/4 v0, 0x0

    aget v3, v4, v0

    .line 149
    new-array v1, v3, [Landroid/opengl/EGLConfig;

    .line 150
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/EGL14;->eglGetConfigs(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;II[II)Z

    .line 152
    const/4 v4, 0x0

    .line 153
    array-length v0, p2

    .line 154
    array-length v2, p2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 155
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .line 157
    :cond_1
    const/4 v2, 0x0

    move v5, v2

    move v2, v4

    :goto_1
    if-ge v5, v3, :cond_6

    .line 159
    const/4 v4, 0x0

    .line 160
    :goto_2
    if-ge v4, v0, :cond_3

    .line 162
    add-int/lit8 v6, v4, 0x1

    aget v6, p2, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 164
    const/4 v6, 0x1

    new-array v6, v6, [I

    .line 165
    iget-object v7, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    aget-object v7, v1, v5

    aget v8, p2, v4

    const/4 v9, 0x0

    invoke-static {p1, v7, v8, v6, v9}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 168
    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/lit8 v7, v4, 0x1

    aget v7, p2, v7

    and-int/2addr v6, v7

    add-int/lit8 v7, v4, 0x1

    aget v7, p2, v7

    if-ne v6, v7, :cond_3

    .line 160
    :cond_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 176
    :cond_3
    if-ne v4, v0, :cond_5

    .line 178
    if-eqz p3, :cond_4

    if-ge v2, p4, :cond_4

    .line 180
    aget-object v4, v1, v5

    aput-object v4, p3, v2

    .line 182
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 157
    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 187
    :cond_6
    const/4 v0, 0x0

    aput v2, p5, v0

    .line 188
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public CreateDummySurfaceAndContext()I
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/16 v7, 0x3006

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 323
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 326
    const/16 v0, 0x3008

    .line 464
    :goto_0
    return v0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_3

    .line 332
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 334
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 336
    const/16 v0, 0x3000

    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_2

    .line 340
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 342
    const/16 v0, 0x3000

    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 345
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 346
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    .line 350
    :cond_3
    new-array v5, v4, [I

    .line 351
    new-array v3, v4, [Landroid/opengl/EGLConfig;

    .line 352
    sget-object v0, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    aput v4, v0, v4

    .line 353
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/FlashEGL14;->ChooseConfig(Landroid/opengl/EGLDisplay;[I[Landroid/opengl/EGLConfig;I[I)Z

    .line 354
    sget-object v0, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    const/4 v1, -0x1

    aput v1, v0, v4

    .line 356
    aget v0, v5, v6

    .line 357
    if-nez v0, :cond_4

    move v0, v7

    .line 359
    goto :goto_0

    .line 365
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_5

    move v0, v4

    .line 375
    :goto_1
    new-array v1, v12, [I

    sget v2, Lcom/adobe/air/FlashEGL14;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v1, v6

    aput v11, v1, v4

    const/16 v2, 0x3038

    aput v2, v1, v11

    .line 377
    if-eqz v0, :cond_f

    .line 380
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v2, v3, v6

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v5, v1, v6}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    .line 381
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v2, :cond_6

    move v0, v7

    .line 384
    goto/16 :goto_0

    :cond_5
    move v0, v6

    .line 365
    goto :goto_1

    .line 386
    :cond_6
    const-string v0, "After creating dummy context for checking gl version"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v2, v3, v6

    sget-object v5, Lcom/adobe/air/FlashEGL14;->fbPBufferSurfaceAttrs:[I

    invoke-static {v0, v2, v5, v6}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v2

    .line 388
    const-string v0, "After eglCreatePbufferSurface for checking gl version"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 389
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v2, v0, :cond_7

    move v0, v7

    .line 392
    goto/16 :goto_0

    .line 394
    :cond_7
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v2, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 395
    const-string v0, "After eglMakeCurrent for checking gl version"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 396
    const/16 v0, 0x1f02

    invoke-static {v0}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_e

    .line 399
    new-instance v5, Ljava/util/Scanner;

    invoke-direct {v5, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 400
    const-string v0, "[^\\w\']+"

    invoke-virtual {v5, v0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 402
    :cond_8
    :goto_2
    invoke-virtual {v5}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 403
    invoke-virtual {v5}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 404
    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    .line 412
    :goto_3
    if-lt v0, v12, :cond_d

    move v0, v4

    .line 418
    :goto_4
    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v9, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v10, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v5, v8, v9, v10}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 420
    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v5, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 421
    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v5}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 422
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    .line 425
    :goto_5
    if-eqz v0, :cond_9

    .line 427
    aput v12, v1, v4

    .line 428
    const-string v0, "Before eglCreateContext es3"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v2, v3, v6

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v5, v1, v6}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    .line 431
    const-string v0, "After eglCreateContext es3"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v2, :cond_9

    .line 433
    iput-boolean v4, p0, Lcom/adobe/air/FlashEGL14;->mIsES3Device:Z

    .line 436
    :cond_9
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v2, :cond_b

    .line 438
    aput v11, v1, v4

    .line 439
    const-string v0, "Before eglCreateContext es2"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v2, v3, v6

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v4, v1, v6}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    .line 441
    const-string v0, "After eglCreateContext es2"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_b

    move v0, v7

    .line 445
    goto/16 :goto_0

    .line 407
    :cond_a
    invoke-virtual {v5}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 408
    invoke-virtual {v5}, Ljava/util/Scanner;->next()Ljava/lang/String;

    goto/16 :goto_2

    .line 449
    :cond_b
    const-string v0, "Before eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v1, v3, v6

    sget-object v2, Lcom/adobe/air/FlashEGL14;->fbPBufferSurfaceAttrs:[I

    invoke-static {v0, v1, v2, v6}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    .line 451
    const-string v0, "After eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_c

    move v0, v7

    .line 456
    goto/16 :goto_0

    .line 459
    :cond_c
    const-string v0, "Before eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 461
    const-string v0, "After eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 464
    const/16 v0, 0x3000

    goto/16 :goto_0

    :cond_d
    move v0, v6

    goto/16 :goto_4

    :cond_e
    move v0, v6

    goto/16 :goto_3

    :cond_f
    move v0, v6

    goto/16 :goto_5
.end method

.method public CreateGLContext(Z)I
    .locals 6

    .prologue
    const/16 v3, 0x3000

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    .line 527
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_0

    .line 530
    const/16 v0, 0x3005

    .line 573
    :goto_0
    return v0

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v4, :cond_1

    if-nez p1, :cond_1

    move v0, v3

    .line 537
    goto :goto_0

    .line 543
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsES3Device:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 544
    :goto_1
    new-array v1, v1, [I

    sget v4, Lcom/adobe/air/FlashEGL14;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v4, v1, v5

    const/4 v4, 0x1

    aput v0, v1, v4

    const/16 v0, 0x3038

    aput v0, v1, v2

    .line 546
    if-eqz p1, :cond_3

    .line 548
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    .line 549
    const-string v2, "Before eglCreateContext"

    invoke-direct {p0, v2}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 550
    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    invoke-static {v2, v4, v0, v1, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    .line 551
    const-string v1, "After eglCreateContext"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 552
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 553
    const-string v0, "After eglDestroyContext"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 562
    :goto_2
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_4

    .line 563
    const/16 v0, 0x3006

    goto :goto_0

    :cond_2
    move v0, v2

    .line 543
    goto :goto_1

    .line 557
    :cond_3
    const-string v0, "Before eglCreateContext"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v4, v1, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    .line 559
    const-string v0, "After eglCreateContext"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    goto :goto_2

    .line 566
    :cond_4
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_5

    .line 568
    const-string v0, "Before eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v2, Lcom/adobe/air/FlashEGL14;->fbPBufferSurfaceAttrs:[I

    invoke-static {v0, v1, v2, v5}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    .line 570
    const-string v0, "After eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    :cond_5
    move v0, v3

    .line 573
    goto/16 :goto_0
.end method

.method public CreateWindowSurface(Landroid/view/SurfaceView;I)I
    .locals 8

    .prologue
    const/16 v4, 0x300d

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 673
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsGPUOOM:Z

    if-eqz v0, :cond_1

    .line 674
    const/16 v0, 0x3003

    .line 759
    :cond_0
    :goto_0
    return v0

    .line 676
    :cond_1
    instance-of v5, p1, Lcom/adobe/air/AIRWindowSurfaceView;

    .line 678
    instance-of v0, p1, Lcom/adobe/flashruntime/air/VideoViewAIR;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/adobe/air/AIRStage3DSurfaceView;

    if-nez v0, :cond_2

    if-nez v5, :cond_2

    move v0, v4

    .line 683
    goto :goto_0

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v3, :cond_3

    .line 689
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 690
    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL14;->MakeGLCurrent()I

    move-result v0

    goto :goto_0

    .line 695
    :cond_3
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kSwapPreserveOn:I

    if-ne p2, v0, :cond_4

    .line 697
    const-string v0, "Before eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    sget-object v7, Lcom/adobe/air/FlashEGL14;->fbWindowSurfaceOnAttrs:[I

    invoke-static {v0, v3, v6, v7, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    .line 699
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v3, :cond_a

    .line 700
    const-string v0, "After eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    move v0, v1

    .line 712
    :goto_1
    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v3, v6, :cond_9

    .line 715
    const-string v0, "Before eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    sget-object v7, Lcom/adobe/air/FlashEGL14;->fbWindowSurfaceDefAttrs:[I

    invoke-static {v0, v3, v6, v7, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    .line 717
    const-string v0, "After eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    move-result v0

    .line 718
    const/16 v3, 0x3000

    if-ne v0, v3, :cond_0

    move v3, v2

    .line 724
    :goto_2
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v6, :cond_5

    move v0, v4

    .line 726
    goto :goto_0

    .line 703
    :cond_4
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kSwapPreserveOff:I

    if-ne p2, v0, :cond_a

    .line 705
    const-string v0, "Before eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    sget-object v7, Lcom/adobe/air/FlashEGL14;->fbWindowSurfaceOffAttrs:[I

    invoke-static {v0, v3, v6, v7, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    .line 707
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v3, :cond_a

    .line 708
    const-string v0, "After eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    move v0, v1

    .line 709
    goto :goto_1

    .line 732
    :cond_5
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 734
    if-eqz v5, :cond_6

    move-object v0, p1

    .line 736
    check-cast v0, Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AIRWindowSurfaceView;->setFlashEGL(Lcom/adobe/air/FlashEGL;)V

    .line 740
    check-cast p1, Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 741
    if-eqz v0, :cond_6

    .line 744
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 745
    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 749
    :cond_6
    new-array v0, v2, [I

    .line 750
    aput v1, v0, v1

    .line 751
    iput-boolean v1, p0, Lcom/adobe/air/FlashEGL14;->mIsBufferPreserve:Z

    .line 752
    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    sget v5, Lcom/adobe/air/FlashEGL14;->EGL_SWAP_BEHAVIOR:I

    invoke-static {v3, v4, v5, v0, v1}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 753
    aget v0, v0, v1

    sget v3, Lcom/adobe/air/FlashEGL14;->EGL_BUFFER_PRESERVED:I

    if-ne v0, v3, :cond_8

    :goto_3
    iput-boolean v2, p0, Lcom/adobe/air/FlashEGL14;->mIsBufferPreserve:Z

    .line 759
    :cond_7
    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL14;->MakeGLCurrent()I

    move-result v0

    goto/16 :goto_0

    :cond_8
    move v2, v1

    .line 753
    goto :goto_3

    :cond_9
    move v3, v0

    goto :goto_2

    :cond_a
    move v0, v2

    goto/16 :goto_1
.end method

.method public DestroyGLContext()Z
    .locals 4

    .prologue
    .line 503
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_1

    .line 505
    :cond_0
    const/4 v0, 0x0

    .line 521
    :goto_0
    return v0

    .line 508
    :cond_1
    const-string v0, "DestroyGLContext: Before eglMakeCurrent for noSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 510
    const-string v0, "DestroyGLContext: After eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_2

    .line 513
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 514
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    .line 517
    :cond_2
    const-string v0, "Before eglDestroyContext"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    move-result v0

    .line 519
    const-string v1, "After eglDestroyContext"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 520
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    goto :goto_0
.end method

.method public DestroyWindowSurface()Z
    .locals 6

    .prologue
    const/16 v5, 0x3000

    const/4 v0, 0x0

    .line 764
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v1, v2, :cond_0

    .line 767
    const-string v1, "Before eglMakeCurrent"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 768
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 770
    const-string v1, "After eglMakeCurrent"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    move-result v1

    if-eq v5, v1, :cond_1

    .line 792
    :cond_0
    :goto_0
    return v0

    .line 773
    :cond_1
    const-string v1, "Before eglDestroySurface (window)"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 774
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 775
    const-string v1, "After eglDestroySurface (window)"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    move-result v1

    if-ne v5, v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    if-ne v1, v2, :cond_2

    .line 779
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 780
    :cond_2
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    .line 782
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v1, v2, :cond_3

    .line 784
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 785
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 786
    const-string v1, "After eglMakeCurrent"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    move-result v1

    if-ne v5, v1, :cond_0

    .line 790
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public FlashEGL14()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    .line 92
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 93
    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 94
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    .line 95
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 96
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    .line 97
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsARGBSurface:Z

    .line 99
    return-void
.end method

.method public GetConfigs(ZZ)[I
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 228
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigCount:I

    iget v1, p0, Lcom/adobe/air/FlashEGL14;->kNumElements:I

    mul-int/2addr v0, v1

    new-array v8, v0, [I

    .line 229
    new-array v5, v6, [I

    .line 230
    new-array v9, v6, [I

    .line 233
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigCount:I

    new-array v0, v0, [Landroid/opengl/EGLConfig;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    .line 235
    const-string v0, "Before eglChooseConfig"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    iget v4, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigCount:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/FlashEGL14;->ChooseConfig(Landroid/opengl/EGLDisplay;[I[Landroid/opengl/EGLConfig;I[I)Z

    .line 237
    const-string v0, "After eglChooseConfig"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 239
    aget v2, v5, v7

    iput v2, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigCount:I

    move v1, v7

    .line 240
    :goto_0
    if-ge v1, v2, :cond_5

    .line 242
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v1

    const/16 v4, 0x3033

    invoke-static {v0, v3, v4, v9, v7}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 243
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kSurfaceTypes:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v0

    aget v3, v9, v7

    aput v3, v8, v0

    .line 245
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kConfigId:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v0

    aput v1, v8, v0

    .line 247
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v1

    const/16 v4, 0x3024

    invoke-static {v0, v3, v4, v9, v7}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 248
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kRedBits:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v0

    aget v3, v9, v7

    aput v3, v8, v0

    .line 250
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v1

    const/16 v4, 0x3023

    invoke-static {v0, v3, v4, v9, v7}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 251
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kGreenBits:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v0

    aget v3, v9, v7

    aput v3, v8, v0

    .line 253
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v1

    const/16 v4, 0x3022

    invoke-static {v0, v3, v4, v9, v7}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 254
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kBlueBits:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v0

    aget v3, v9, v7

    aput v3, v8, v0

    .line 256
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v1

    const/16 v4, 0x3021

    invoke-static {v0, v3, v4, v9, v7}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 257
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kAlphaBits:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v0

    aget v3, v9, v7

    aput v3, v8, v0

    .line 259
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v1

    const/16 v4, 0x3020

    invoke-static {v0, v3, v4, v9, v7}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 260
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kColorBits:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v0

    aget v3, v9, v7

    aput v3, v8, v0

    .line 262
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v1

    const/16 v4, 0x3025

    invoke-static {v0, v3, v4, v9, v7}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 263
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kDepthBits:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v0

    aget v3, v9, v7

    aput v3, v8, v0

    .line 265
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v1

    const/16 v4, 0x3026

    invoke-static {v0, v3, v4, v9, v7}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 266
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kStencilBits:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v0

    aget v3, v9, v7

    aput v3, v8, v0

    .line 268
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kCsaaSamp:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v0

    aput v7, v8, v0

    .line 269
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kMsaaSamp:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v0

    aput v7, v8, v0

    .line 271
    if-eqz p1, :cond_2

    .line 272
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v1

    sget v4, Lcom/adobe/air/FlashEGL14;->EGL_COVERAGE_SAMPLES_NV:I

    invoke-static {v0, v3, v4, v9, v7}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 273
    aget v0, v9, v7

    if-eq v0, v6, :cond_0

    .line 274
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kCsaaSamp:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v0

    aget v3, v9, v7

    aput v3, v8, v0

    .line 282
    :cond_0
    :goto_1
    if-eqz p2, :cond_4

    .line 284
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kSwapPreserve:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v3

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglVersion:[I

    aget v0, v0, v7

    if-gt v0, v6, :cond_1

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglVersion:[I

    aget v0, v0, v6

    const/4 v4, 0x3

    if-le v0, v4, :cond_3

    :cond_1
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kSurfaceTypes:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v0

    aget v0, v8, v0

    sget v4, Lcom/adobe/air/FlashEGL14;->EGL_BUFFER_PRESERVED:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_3

    move v0, v6

    :goto_2
    aput v0, v8, v3

    .line 240
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v1

    const/16 v4, 0x3031

    invoke-static {v0, v3, v4, v9, v7}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 278
    aget v0, v9, v7

    if-eq v0, v6, :cond_0

    .line 279
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kMsaaSamp:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v0

    aget v3, v9, v7

    aput v3, v8, v0

    goto :goto_1

    :cond_3
    move v0, v7

    .line 284
    goto :goto_2

    .line 287
    :cond_4
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kSwapPreserve:I

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v0

    aput v7, v8, v0

    goto :goto_3

    .line 290
    :cond_5
    return-object v8
.end method

.method public GetNumConfigs()[I
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/16 v4, 0x64

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 193
    new-array v6, v10, [I

    .line 194
    new-array v5, v7, [I

    .line 195
    new-array v3, v4, [Landroid/opengl/EGLConfig;

    .line 198
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/FlashEGL14;->ChooseConfig(Landroid/opengl/EGLDisplay;[I[Landroid/opengl/EGLConfig;I[I)Z

    .line 199
    aget v0, v5, v8

    aput v0, v6, v8

    iput v0, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigCount:I

    .line 203
    sget-object v0, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    aput v10, v0, v7

    .line 204
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/FlashEGL14;->ChooseConfig(Landroid/opengl/EGLDisplay;[I[Landroid/opengl/EGLConfig;I[I)Z

    .line 205
    aget v0, v5, v8

    aput v0, v6, v7

    iput v0, p0, Lcom/adobe/air/FlashEGL14;->mWindowConfigCount:I

    .line 209
    sget-object v0, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    aput v9, v0, v7

    .line 210
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/FlashEGL14;->ChooseConfig(Landroid/opengl/EGLDisplay;[I[Landroid/opengl/EGLConfig;I[I)Z

    .line 211
    aget v0, v5, v8

    aput v0, v6, v9

    iput v0, p0, Lcom/adobe/air/FlashEGL14;->mPixmapConfigCount:I

    .line 215
    sget-object v0, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    aput v7, v0, v7

    .line 216
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/FlashEGL14;->ChooseConfig(Landroid/opengl/EGLDisplay;[I[Landroid/opengl/EGLConfig;I[I)Z

    .line 217
    const/4 v0, 0x3

    aget v1, v5, v8

    aput v1, v6, v0

    iput v1, p0, Lcom/adobe/air/FlashEGL14;->mPbufferConfigCount:I

    .line 221
    sget-object v0, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    const/4 v1, -0x1

    aput v1, v0, v7

    .line 223
    return-object v6
.end method

.method public GetSurfaceHeight()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 125
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    const/16 v3, 0x3056

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 127
    aget v0, v0, v4

    return v0
.end method

.method public GetSurfaceWidth()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 117
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    const/16 v3, 0x3057

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 119
    aget v0, v0, v4

    return v0
.end method

.method public HasGLContext()Z
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public InitEGL()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v0, 0x3000

    .line 470
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v1, v2, :cond_1

    .line 498
    :cond_0
    :goto_0
    return v0

    .line 477
    :cond_1
    new-instance v1, Landroid/opengl/EGL14;

    invoke-direct {v1}, Landroid/opengl/EGL14;-><init>()V

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    .line 481
    const-string v1, "Before eglGetDisplay"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 482
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    invoke-static {v5}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 483
    const-string v1, "After eglGetDisplay"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    move-result v1

    .line 484
    if-eq v0, v1, :cond_2

    move v0, v1

    .line 485
    goto :goto_0

    .line 489
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglVersion:[I

    .line 490
    const-string v1, "Before eglInitialize"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 491
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglVersion:[I

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglVersion:[I

    const/4 v4, 0x1

    invoke-static {v1, v2, v5, v3, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 492
    const-string v1, "After eglInitialize"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    move-result v1

    .line 493
    if-eq v0, v1, :cond_0

    move v0, v1

    .line 494
    goto :goto_0
.end method

.method public IsARGBSurface()Z
    .locals 1

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsARGBSurface:Z

    return v0
.end method

.method public IsBufferPreserve()Z
    .locals 1

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsBufferPreserve:Z

    return v0
.end method

.method public IsEmulator()Z
    .locals 2

    .prologue
    .line 132
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public MakeGLCurrent()I
    .locals 4

    .prologue
    .line 646
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_0

    .line 649
    const/16 v0, 0x3006

    .line 666
    :goto_0
    return v0

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_1

    .line 655
    const/16 v0, 0x300d

    goto :goto_0

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_2

    .line 661
    const/16 v0, 0x3008

    goto :goto_0

    .line 664
    :cond_2
    const-string v0, "Before eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 666
    const-string v0, "After eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public ReleaseGPUResources()V
    .locals 4

    .prologue
    .line 591
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_0

    .line 629
    :goto_0
    return-void

    .line 597
    :cond_0
    const-string v0, "Before eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 599
    const-string v0, "After eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 602
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    monitor-enter v1

    .line 604
    :try_start_0
    const-string v0, "Before eglDestroySurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v2, :cond_1

    .line 606
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 607
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    .line 609
    :cond_1
    const-string v0, "After eglDestroySurface (window)"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 610
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_2

    .line 614
    const-string v0, "Before eglDestroySurface (pbuffer)"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 616
    const-string v0, "After eglDestroySurface (pbuffer)"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 617
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    .line 621
    :cond_2
    const-string v0, "Before eglDestroyContext"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 623
    const-string v0, "After eglDestroyContext"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 625
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    .line 626
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    goto :goto_0

    .line 610
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public SetConfig(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 296
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 298
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 299
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/16 v3, 0x3024

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 300
    aget v1, v0, v4

    .line 301
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/16 v3, 0x3023

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 302
    aget v1, v0, v4

    .line 303
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/16 v3, 0x3022

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 304
    aget v1, v0, v4

    .line 305
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/16 v3, 0x3021

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 306
    aget v1, v0, v4

    .line 307
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/16 v3, 0x3025

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 308
    aget v1, v0, v4

    .line 309
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/16 v3, 0x3026

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 310
    aget v1, v0, v4

    .line 311
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/16 v3, 0x3031

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 312
    aget v1, v0, v4

    .line 313
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/16 v3, 0x3032

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 314
    aget v0, v0, v4

    .line 317
    return-void
.end method

.method public SwapEGLBuffers()V
    .locals 2

    .prologue
    .line 635
    const/16 v0, 0x3000

    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL14;->MakeGLCurrent()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 642
    :goto_0
    return-void

    .line 639
    :cond_0
    const-string v0, "Before eglSwapBuffers"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 641
    const-string v0, "After eglSwapBuffers"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TerminateEGL()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 583
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 584
    return-void
.end method
