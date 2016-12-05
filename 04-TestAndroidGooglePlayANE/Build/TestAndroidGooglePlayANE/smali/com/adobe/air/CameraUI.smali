.class public final Lcom/adobe/air/CameraUI;
.super Ljava/lang/Object;
.source "CameraUI.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;


# static fields
.field public static final ERROR_ACTIVITY_DESTROYED:I = 0x4

.field public static final ERROR_CAMERA_BUSY:I = 0x1

.field public static final ERROR_CAMERA_ERROR:I = 0x2

.field public static final ERROR_CAMERA_UNAVAILABLE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "CameraUI"

.field private static final PHONE_STORAGE:Ljava/lang/String; = "phoneStorage"

.field public static final REQUESTED_MEDIA_TYPE_IMAGE:I = 0x1

.field public static final REQUESTED_MEDIA_TYPE_INVALID:I = 0x0

.field public static final REQUESTED_MEDIA_TYPE_VIDEO:I = 0x2

.field private static sCameraRollPath:Ljava/lang/String;

.field private static sCameraUI:Lcom/adobe/air/CameraUI;


# instance fields
.field private mCameraBusy:Z

.field private mImagePath:Ljava/lang/String;

.field private mLastClientId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    sput-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    .line 88
    sput-object v0, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    .line 139
    return-void
.end method

.method private getCameraRollDirectory(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 515
    sget-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 517
    sget-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    .line 586
    :goto_0
    return-object v0

    .line 522
    :cond_0
    if-nez v2, :cond_4

    .line 528
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 540
    :goto_1
    if-nez v0, :cond_3

    .line 544
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "phoneStorage"

    invoke-static {v3}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 554
    :goto_2
    if-eqz v1, :cond_2

    .line 558
    :try_start_2
    invoke-direct {p0, v1, p1}, Lcom/adobe/air/CameraUI;->getFileFromUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/io/File;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 568
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 586
    :cond_1
    :goto_3
    sget-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    .line 548
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_2

    .line 560
    :catch_2
    move-exception v0

    .line 568
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 563
    :catch_3
    move-exception v0

    .line 568
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 569
    throw v0

    .line 576
    :cond_2
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method public static declared-synchronized getCameraUI()Lcom/adobe/air/CameraUI;
    .locals 3

    .prologue
    .line 150
    const-class v1, Lcom/adobe/air/CameraUI;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/adobe/air/CameraUI;

    invoke-direct {v0}, Lcom/adobe/air/CameraUI;-><init>()V

    sput-object v0, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;

    .line 154
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    sget-object v2, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;

    invoke-virtual {v0, v2}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 157
    :cond_0
    sget-object v0, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getCursorFromUri(Landroid/net/Uri;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 244
    .line 247
    :try_start_0
    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 249
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    if-eqz v1, :cond_1

    move v0, v6

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    and-int/2addr v0, v6

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_1
    move v0, v7

    .line 260
    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    .line 254
    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 260
    if-eqz v1, :cond_5

    move v0, v6

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_6

    :goto_4
    and-int/2addr v0, v6

    if-eqz v0, :cond_4

    .line 262
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v8

    goto :goto_2

    :cond_5
    move v0, v7

    .line 260
    goto :goto_3

    :cond_6
    move v6, v7

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_5
    if-eqz v8, :cond_8

    move v0, v6

    :goto_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_7
    and-int/2addr v0, v6

    if-eqz v0, :cond_7

    .line 262
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1

    :cond_8
    move v0, v7

    .line 260
    goto :goto_6

    :cond_9
    move v6, v7

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    goto :goto_5
.end method

.method private getFileFromUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/io/File;
    .locals 4

    .prologue
    .line 217
    const/4 v1, 0x0

    .line 218
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v0, v2

    .line 221
    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/air/CameraUI;->getCursorFromUri(Landroid/net/Uri;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 222
    if-eqz v2, :cond_0

    .line 226
    :try_start_0
    const-string v0, "_data"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 227
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 228
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 239
    :goto_0
    return-object v0

    .line 229
    :catch_0
    move-exception v0

    .line 234
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 236
    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 235
    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private native nativeOnCameraCancel(J)V
.end method

.method private native nativeOnCameraError(JI)V
.end method

.method private native nativeOnCameraResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private onCameraCancel()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 118
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 120
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/CameraUI;->nativeOnCameraCancel(J)V

    .line 122
    iput-wide v2, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 124
    :cond_0
    return-void
.end method

.method private onCameraError(I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 108
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 110
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/air/CameraUI;->nativeOnCameraError(JI)V

    .line 112
    iput-wide v2, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 114
    :cond_0
    return-void
.end method

.method private onCameraResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 128
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 130
    iget-wide v2, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/adobe/air/CameraUI;->nativeOnCameraResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-wide v8, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 134
    :cond_0
    return-void
.end method

.method private processImageSuccessResult()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 269
    new-instance v0, Ljava/lang/String;

    const-string v1, "image"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 270
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 272
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 273
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v5, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 280
    iget-object v2, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/adobe/air/CameraUI;->onCameraResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method private processVideoSuccessResult(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 285
    .line 289
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "mime_type"

    aput-object v3, v0, v2

    const-string v2, "_display_name"

    aput-object v2, v0, v7

    .line 294
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lcom/adobe/air/CameraUI;->getCursorFromUri(Landroid/net/Uri;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 299
    if-eqz v4, :cond_6

    .line 304
    :try_start_0
    const-string v0, "_data"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 305
    const-string v2, "mime_type"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 306
    const-string v3, "_display_name"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 307
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 309
    if-eqz v3, :cond_5

    .line 311
    :try_start_1
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-direct {p0, v0}, Lcom/adobe/air/CameraUI;->toMediaType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 315
    if-nez v0, :cond_0

    .line 317
    :try_start_2
    new-instance v2, Ljava/lang/String;

    const-string v6, "video"

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    .line 320
    :cond_0
    :try_start_3
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 321
    if-nez v2, :cond_4

    .line 323
    :try_start_4
    new-instance v1, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 331
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v2, v1

    move-object v1, v0

    .line 338
    :goto_1
    if-eqz v1, :cond_1

    const-string v0, "image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    :cond_2
    invoke-direct {p0, v3, v1, v2}, Lcom/adobe/air/CameraUI;->onCameraResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :goto_2
    return-void

    .line 326
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v0, v1

    .line 331
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v3, v0

    .line 333
    goto :goto_1

    .line 331
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 332
    throw v0

    .line 344
    :cond_3
    invoke-direct {p0, v7}, Lcom/adobe/air/CameraUI;->onCameraError(I)V

    goto :goto_2

    .line 326
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v0, v3

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    :catch_3
    move-exception v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    :cond_4
    move-object v1, v2

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    move-object v2, v1

    move-object v3, v1

    goto :goto_1
.end method

.method private stillPictureWork()I
    .locals 11

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/16 v10, 0x17

    .line 592
    const/4 v3, 0x0

    .line 593
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 595
    if-nez v6, :cond_1

    .line 597
    const/4 v5, 0x4

    .line 690
    :cond_0
    :goto_0
    return v5

    .line 600
    :cond_1
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->GetTargetSdkVersion()I

    move-result v0

    if-lt v0, v10, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v10, :cond_3

    :cond_2
    invoke-direct {p0, v6}, Lcom/adobe/air/CameraUI;->getCameraRollDirectory(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 608
    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 609
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/air/AndroidActivityWrapper;->GetTargetSdkVersion()I

    move-result v2

    if-lt v2, v10, :cond_6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_6

    .line 615
    new-instance v2, Ljava/io/File;

    invoke-virtual {v6}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "Pictures"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 616
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 618
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 622
    :cond_4
    :try_start_0
    const-string v7, ".jpg"

    invoke-static {v0, v7, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 627
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 644
    :cond_5
    :goto_1
    if-eqz v2, :cond_0

    .line 655
    :try_start_1
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/air/AndroidActivityWrapper;->GetTargetSdkVersion()I

    move-result v8

    if-lt v8, v10, :cond_7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    if-lt v8, v10, :cond_7

    .line 661
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v2}, Lcom/adobe/air/CameraUIProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    .line 668
    :goto_2
    :try_start_3
    const-string v8, "output"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 669
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 676
    :goto_3
    const/4 v2, 0x3

    invoke-virtual {v6, v7, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v0

    move v0, v3

    .line 688
    :goto_4
    iput-object v1, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    move v5, v0

    .line 690
    goto/16 :goto_0

    .line 629
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 632
    goto :goto_1

    .line 637
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v6}, Lcom/adobe/air/CameraUI;->getCameraRollDirectory(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v2, v1

    .line 641
    goto :goto_1

    .line 664
    :catch_1
    move-exception v2

    .line 666
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    goto :goto_2

    .line 673
    :cond_7
    const-string v8, "output"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 677
    :catch_2
    move-exception v0

    move v0, v4

    .line 686
    goto :goto_4

    .line 681
    :catch_3
    move-exception v0

    move v0, v5

    .line 684
    goto :goto_4
.end method

.method private toMediaType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 202
    if-eqz p1, :cond_0

    .line 204
    const-string v1, "image/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    new-instance v0, Ljava/lang/String;

    const-string v1, "image"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 212
    :cond_0
    :goto_0
    return-object v0

    .line 207
    :cond_1
    const-string v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/String;

    const-string v1, "video"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private videoCaptureWork()I
    .locals 5

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 486
    .line 489
    :try_start_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 491
    if-nez v2, :cond_0

    .line 510
    :goto_0
    return v0

    .line 498
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    const-string v3, "android.intent.extra.videoQuality"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const/4 v3, 0x4

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 505
    :catch_0
    move-exception v0

    .line 507
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public launch(JI)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 432
    cmp-long v0, p1, v4

    if-nez v0, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    if-eqz v0, :cond_2

    .line 443
    invoke-direct {p0, p1, p2, v2}, Lcom/adobe/air/CameraUI;->nativeOnCameraError(JI)V

    goto :goto_0

    .line 449
    :cond_2
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 452
    invoke-direct {p0, v2}, Lcom/adobe/air/CameraUI;->onCameraError(I)V

    .line 455
    :cond_3
    iput-wide p1, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 457
    iput-boolean v2, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    .line 460
    packed-switch p3, :pswitch_data_0

    .line 471
    const/4 v0, 0x3

    .line 475
    :goto_1
    if-eqz v0, :cond_0

    .line 478
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    .line 479
    invoke-direct {p0, v0}, Lcom/adobe/air/CameraUI;->onCameraError(I)V

    goto :goto_0

    .line 463
    :pswitch_0
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->stillPictureWork()I

    move-result v0

    goto :goto_1

    .line 466
    :pswitch_1
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->videoCaptureWork()I

    move-result v0

    goto :goto_1

    .line 460
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 360
    if-eq p1, v5, :cond_1

    if-eq p1, v6, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    .line 372
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 379
    packed-switch p2, :pswitch_data_0

    .line 407
    iget-object v0, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 409
    iput-object v4, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    .line 411
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/adobe/air/CameraUI;->onCameraError(I)V

    goto :goto_0

    .line 383
    :pswitch_0
    if-ne p1, v5, :cond_4

    .line 385
    iget-object v0, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 387
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->processImageSuccessResult()V

    .line 388
    iput-object v4, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    goto :goto_0

    .line 392
    :cond_3
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->onCameraCancel()V

    goto :goto_0

    .line 394
    :cond_4
    if-ne p1, v6, :cond_0

    .line 396
    invoke-direct {p0, p3}, Lcom/adobe/air/CameraUI;->processVideoSuccessResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 400
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 402
    iput-object v4, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    .line 404
    :cond_5
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->onCameraCancel()V

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unregisterCallbacks(J)V
    .locals 3

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 196
    :cond_0
    return-void
.end method
