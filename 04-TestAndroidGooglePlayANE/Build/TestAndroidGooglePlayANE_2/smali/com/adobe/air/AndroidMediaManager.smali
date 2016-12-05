.class public Lcom/adobe/air/AndroidMediaManager;
.super Ljava/lang/Object;
.source "AndroidMediaManager.java"


# static fields
.field public static final ERROR_ACTIVITY_DESTROYED:I = 0x2

.field public static final ERROR_IMAGE_PICKER_NOT_FOUND:I = 0x1

.field private static MediaManagerObjectPointer:J = 0x0L

.field private static final PHONE_STORAGE:Ljava/lang/String; = "phoneStorage"


# instance fields
.field private mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

.field private mCallbacksRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AndroidMediaManager;->mCallbacksRegistered:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    .line 70
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    .line 71
    return-void
.end method

.method public static AddImage(Landroid/app/Application;Landroid/graphics/Bitmap;Z)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 147
    .line 148
    if-eqz p0, :cond_1

    .line 150
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v0, p1, v3, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 165
    :goto_0
    if-nez v2, :cond_2

    .line 166
    const-string v2, "phoneStorage"

    invoke-static {v2, v0, p1, p2}, Lcom/adobe/air/AndroidMediaManager;->SaveImage(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Z)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 168
    :goto_1
    if-eqz v3, :cond_1

    .line 171
    const/4 v1, 0x1

    :try_start_1
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v1

    .line 172
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    .line 177
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 178
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 179
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 180
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_2
    move v0, v6

    .line 192
    :goto_3
    return v0

    .line 158
    :catch_0
    move-exception v3

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_3

    :cond_2
    move-object v3, v2

    goto :goto_1
.end method

.method private static SaveImage(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Z)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 200
    .line 205
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 206
    if-eqz p3, :cond_1

    .line 207
    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 212
    const-string v2, "datetaken"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    const-string v2, "date_added"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    invoke-static {p0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    .line 221
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    .line 224
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p2, v1, v2, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 227
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 228
    const/high16 v6, 0x43a00000    # 320.0f

    const/high16 v7, 0x43700000    # 240.0f

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lcom/adobe/air/AndroidMediaManager;->SaveThumbnail(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 229
    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v7, 0x42480000    # 50.0f

    const/4 v8, 0x3

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/adobe/air/AndroidMediaManager;->SaveThumbnail(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    :try_start_3
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 258
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 259
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_2
    return-object v0

    .line 209
    :cond_1
    :try_start_4
    const-string v1, "mime_type"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    move-object v0, v9

    .line 251
    :goto_3
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p1, v0, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v0, v9

    .line 254
    goto :goto_1

    .line 231
    :catch_1
    move-exception v1

    .line 234
    if-eqz v0, :cond_2

    .line 236
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v9

    .line 242
    :cond_2
    :try_start_6
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 248
    :catch_2
    move-exception v1

    goto :goto_3

    .line 242
    :catchall_0
    move-exception v1

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    move-object v0, v9

    goto :goto_2
.end method

.method private static final SaveThumbnail(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 266
    if-nez p2, :cond_1

    move-object v0, v7

    .line 319
    :cond_0
    :goto_0
    return-object v0

    .line 269
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 274
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p5, v0

    .line 275
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p6, v1

    .line 277
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 279
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 290
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 291
    const-string v2, "kind"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    const-string v2, "image_id"

    long-to-int v3, p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v2, "height"

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v2, "width"

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    :try_start_1
    invoke-static {p0}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 300
    if-eqz v1, :cond_2

    .line 302
    :try_start_2
    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 303
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 304
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 316
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    move-object v0, v7

    .line 319
    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 287
    goto :goto_0

    .line 307
    :catch_1
    move-exception v1

    move-object v1, v7

    .line 310
    :goto_2
    if-eqz v1, :cond_2

    .line 312
    invoke-virtual {p1, v1, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v1, v7

    .line 313
    goto :goto_1

    .line 307
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 35
    sget-wide v0, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/adobe/air/AndroidMediaManager;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/adobe/air/AndroidMediaManager;->mCallbacksRegistered:Z

    return v0
.end method

.method private doCallbackRegistration(Z)V
    .locals 2

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/adobe/air/AndroidMediaManager;->mCallbacksRegistered:Z

    .line 93
    if-eqz p1, :cond_2

    .line 95
    iget-object v0, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/adobe/air/AndroidMediaManager$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidMediaManager$1;-><init>(Lcom/adobe/air/AndroidMediaManager;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    .line 132
    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    if-eqz v0, :cond_1

    .line 137
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    goto :goto_0
.end method


# virtual methods
.method public BrowseImage(J)I
    .locals 5

    .prologue
    const/4 v1, 0x2

    .line 329
    const/4 v0, 0x0

    .line 331
    :try_start_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v2

    .line 332
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 333
    const-string v4, "image/*"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v4, "android.intent.action.PICK"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    invoke-virtual {v2}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 336
    invoke-virtual {v2}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    invoke-static {v3, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/adobe/air/AndroidMediaManager;->registerCallbacks()V

    .line 348
    sput-wide p1, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    .line 350
    :cond_0
    return v0

    :cond_1
    move v0, v1

    .line 338
    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 342
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBrowseImageResult(ILandroid/content/Intent;Landroid/app/Activity;)V
    .locals 9

    .prologue
    .line 361
    if-nez p1, :cond_1

    .line 364
    sget-wide v2, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/adobe/air/AndroidMediaManager;->useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 373
    const/4 v0, 0x3

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_display_name"

    aput-object v1, v2, v0

    .line 376
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 378
    if-nez v0, :cond_2

    .line 381
    sget-wide v2, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/adobe/air/AndroidMediaManager;->useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 392
    sget-wide v2, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/adobe/air/AndroidMediaManager;->useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_2
    :try_start_1
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 386
    const-string v2, "_display_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 387
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 401
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 402
    const-string v7, "image"

    .line 403
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 405
    if-eqz v6, :cond_3

    const-string v0, "http"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 409
    :cond_3
    sget-wide v2, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/air/AndroidMediaManager;->useStreamData(JZZLjava/lang/String;)V

    goto :goto_0

    .line 394
    :catch_1
    move-exception v0

    .line 397
    sget-wide v2, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/adobe/air/AndroidMediaManager;->useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 414
    :cond_4
    sget-wide v2, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/adobe/air/AndroidMediaManager;->useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public registerCallbacks()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidMediaManager;->doCallbackRegistration(Z)V

    .line 79
    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidMediaManager;->doCallbackRegistration(Z)V

    .line 87
    return-void
.end method

.method public native useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native useStreamData(JZZLjava/lang/String;)V
.end method
