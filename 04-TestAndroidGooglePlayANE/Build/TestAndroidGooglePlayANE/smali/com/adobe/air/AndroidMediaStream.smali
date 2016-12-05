.class public Lcom/adobe/air/AndroidMediaStream;
.super Ljava/lang/Object;
.source "AndroidMediaStream.java"


# static fields
.field private static final ERROR:I = -0x2


# instance fields
.field private mBufferSize:I

.field private mBufferedStream:Ljava/io/BufferedInputStream;

.field private mContentURI:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/adobe/air/AndroidMediaStream;->mBufferedStream:Ljava/io/BufferedInputStream;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/air/AndroidMediaStream;->mBufferSize:I

    .line 40
    iput-object v1, p0, Lcom/adobe/air/AndroidMediaStream;->mContentURI:Landroid/net/Uri;

    .line 46
    return-void
.end method


# virtual methods
.method public Close()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adobe/air/AndroidMediaStream;->mBufferedStream:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidMediaStream;->mBufferedStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidMediaStream;->mBufferedStream:Ljava/io/BufferedInputStream;

    .line 88
    :cond_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public Read([BI)I
    .locals 2

    .prologue
    .line 67
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidMediaStream;->mBufferedStream:Ljava/io/BufferedInputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 75
    :goto_0
    return v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public loadContentURI(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/AndroidMediaStream;->mContentURI:Landroid/net/Uri;

    .line 50
    iget-object v1, p0, Lcom/adobe/air/AndroidMediaStream;->mBufferedStream:Ljava/io/BufferedInputStream;

    if-nez v1, :cond_0

    .line 51
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    .line 53
    :try_start_0
    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/air/AndroidMediaStream;->mContentURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 55
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/adobe/air/AndroidMediaStream;->mBufferedStream:Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0

    .line 56
    :catch_1
    move-exception v1

    goto :goto_0
.end method
