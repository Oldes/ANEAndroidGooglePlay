.class public Lcom/adobe/air/microphone/AIRMicrophoneRecorder;
.super Ljava/lang/Object;
.source "AIRMicrophoneRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final BLACKLIST:[Ljava/lang/String;


# instance fields
.field private echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

.field private hardwareAEC:Z

.field private mBuffer_toWrite:Ljava/nio/ByteBuffer;

.field public volatile mKeepAlive:Z

.field private mMicBuffer:[B

.field private m_audioFormat:I

.field private m_audioSource:I

.field private m_bufferSize:I

.field private m_channelConfiguration:I

.field public m_delay:S

.field public m_isEnhancedMicrophone:Z

.field private volatile m_isPaused:Z

.field private volatile m_isRecording:Z

.field private m_recorder:Landroid/media/AudioRecord;

.field private m_sampleRate:I

.field private final mutex:Ljava/lang/Object;

.field private noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

.field private t_analyze:J

.field private t_capture:J

.field private t_process:J

.field private t_render:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 285
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Nexus 9"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Nexus 10"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ONE A2005"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D6503"

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->BLACKLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioSource:I

    .line 299
    iput v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_sampleRate:I

    .line 300
    iput v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_channelConfiguration:I

    .line 301
    iput v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioFormat:I

    .line 302
    iput v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    .line 306
    iput-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 307
    iput-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 308
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    .line 309
    iput-boolean v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isEnhancedMicrophone:Z

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mKeepAlive:Z

    .line 312
    iput-wide v2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_render:J

    iput-wide v2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_analyze:J

    iput-wide v2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_process:J

    iput-wide v2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_capture:J

    .line 313
    iput-short v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_delay:S

    .line 314
    iput-boolean v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->hardwareAEC:Z

    .line 34
    iput p1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioSource:I

    .line 35
    iput p2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_sampleRate:I

    .line 36
    iput p3, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_channelConfiguration:I

    .line 37
    iput p4, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioFormat:I

    .line 38
    iput p5, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    .line 39
    iget v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mMicBuffer:[B

    .line 40
    return-void
.end method

.method public static deviceIsBlackListed()Z
    .locals 2

    .prologue
    .line 293
    sget-object v0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->BLACKLIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 294
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private doAECM()V
    .locals 14

    .prologue
    .line 210
    :try_start_0
    new-instance v0, Lcom/adobe/air/microphone/MobileAEC;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adobe/air/microphone/MobileAEC;-><init>(Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;)V

    .line 211
    sget-object v1, Lcom/adobe/air/microphone/MobileAEC$AggressiveMode;->MOST_AGGRESSIVE:Lcom/adobe/air/microphone/MobileAEC$AggressiveMode;

    invoke-virtual {v0, v1}, Lcom/adobe/air/microphone/MobileAEC;->setAecmMode(Lcom/adobe/air/microphone/MobileAEC$AggressiveMode;)Lcom/adobe/air/microphone/MobileAEC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/air/microphone/MobileAEC;->prepare()Lcom/adobe/air/microphone/MobileAEC;

    .line 214
    new-instance v6, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mMicBuffer:[B

    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 215
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mBuffer_toWrite:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 220
    const/16 v1, 0x140

    new-array v8, v1, [B

    .line 222
    :goto_0
    const/4 v1, 0x0

    array-length v2, v8

    invoke-virtual {v6, v8, v1, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 224
    const/16 v1, 0xa0

    new-array v1, v1, [S

    .line 225
    const/16 v2, 0xa0

    new-array v3, v2, [S

    .line 226
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_analyze:J

    .line 233
    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/microphone/MobileAEC;->farendBuffer([SI)Lcom/adobe/air/microphone/MobileAEC;

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_process:J

    .line 240
    iget-wide v4, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_render:J

    iget-wide v10, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_analyze:J

    sub-long/2addr v4, v10

    iget-wide v10, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_process:J

    iget-wide v12, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_capture:J

    sub-long/2addr v10, v12

    add-long/2addr v4, v10

    long-to-int v2, v4

    int-to-short v2, v2

    iput-short v2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_delay:S

    .line 241
    const/16 v2, 0xc8

    iput-short v2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_delay:S

    .line 243
    const/4 v2, 0x0

    const/16 v4, 0xa0

    iget-short v5, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_delay:S

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/microphone/MobileAEC;->echoCancellation([S[S[SSS)V

    .line 247
    const/16 v1, 0x140

    new-array v1, v1, [B

    .line 248
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 249
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v7, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    :goto_1
    return-void

    .line 255
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mBuffer_toWrite:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 256
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mBuffer_toWrite:Ljava/nio/ByteBuffer;

    .line 257
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mBuffer_toWrite:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 259
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 260
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V

    .line 261
    invoke-virtual {v0}, Lcom/adobe/air/microphone/MobileAEC;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getBlackListedModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    sget-object v0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->BLACKLIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Open()Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 110
    iget v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_sampleRate:I

    iget v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_channelConfiguration:I

    iget v2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioFormat:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 112
    iget-boolean v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isEnhancedMicrophone:Z

    if-eqz v1, :cond_1

    .line 119
    iget v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    if-le v1, v0, :cond_0

    .line 120
    iget v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    .line 124
    :goto_0
    iget v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mBuffer_toWrite:Ljava/nio/ByteBuffer;

    move v5, v0

    .line 138
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isEnhancedMicrophone:Z

    if-eqz v0, :cond_3

    .line 139
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x7

    iget v2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_sampleRate:I

    iget v3, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_channelConfiguration:I

    iget v4, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioFormat:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_2
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 154
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 158
    :goto_3
    return-object v0

    .line 122
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 128
    :cond_1
    iget v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    if-le v1, v0, :cond_2

    .line 129
    iget v5, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    goto :goto_1

    .line 131
    :cond_2
    mul-int/lit8 v5, v0, 0x2

    goto :goto_1

    .line 142
    :cond_3
    :try_start_1
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioSource:I

    iget v2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_sampleRate:I

    iget v3, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_channelConfiguration:I

    iget v4, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioFormat:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 146
    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 149
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    .line 158
    :cond_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3
.end method

.method public getBuffer()[B
    .locals 4

    .prologue
    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_capture:J

    .line 169
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mMicBuffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 170
    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    .line 180
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isEnhancedMicrophone:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->hardwareAEC:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->deviceIsBlackListed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_render:J

    .line 182
    invoke-direct {p0}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->doAECM()V

    .line 183
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mBuffer_toWrite:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mMicBuffer:[B

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mMicBuffer:[B

    return-object v0

    .line 172
    :cond_3
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 2

    .prologue
    .line 271
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isRecording:Z

    monitor-exit v1

    return v0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 44
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->isRecording()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Wait interrupted"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 55
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    .line 60
    :try_start_4
    iget-boolean v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isEnhancedMicrophone:Z

    if-eqz v0, :cond_2

    .line 66
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 68
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 76
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    .line 77
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->hardwareAEC:Z

    .line 81
    :goto_1
    iget-boolean v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->hardwareAEC:Z

    if-eqz v1, :cond_2

    .line 82
    invoke-static {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 83
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 86
    :cond_1
    const-string v1, "AJAudioRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS Hardware NoiseSuppressor enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {v0}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 89
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 103
    :cond_3
    :goto_2
    return-void

    .line 80
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->hardwareAEC:Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 98
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public setIsEnhanced(Z)V
    .locals 0

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isEnhancedMicrophone:Z

    .line 278
    return-void
.end method

.method public setRecording(Z)V
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    iput-boolean p1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isRecording:Z

    .line 196
    iget-boolean v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isRecording:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 204
    :goto_0
    monitor-exit v1

    .line 205
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 200
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
