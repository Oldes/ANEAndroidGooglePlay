.class Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;
.super Ljava/lang/Object;
.source "JavaTrustStoreHelper.java"

# interfaces
.implements Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/JavaTrustStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemKeyStoreManager_files"
.end annotation


# static fields
.field private static final kDirectoryPath:Ljava/lang/String; = "/system/etc/security/cacerts"


# instance fields
.field private mNumFilesWhenCreated:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->mNumFilesWhenCreated:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/air/JavaTrustStoreHelper$1;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;-><init>()V

    return-void
.end method

.method private static getFileListing()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/cacerts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 166
    return-object v0
.end method

.method public static isValid()Z
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/cacerts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 141
    return v0
.end method


# virtual methods
.method public getKeyStore()Ljava/security/KeyStore;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 171
    .line 175
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 176
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 178
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 180
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->getFileListing()[Ljava/lang/String;

    move-result-object v4

    .line 181
    array-length v2, v4

    iput v2, p0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->mNumFilesWhenCreated:I

    .line 184
    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 186
    aget-object v5, v4, v2

    .line 187
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/etc/security/cacerts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 188
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 190
    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 191
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 193
    invoke-virtual {v0, v6, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->mNumFilesWhenCreated:I

    move-object v0, v1

    .line 204
    :cond_0
    return-object v0
.end method

.method public getTimestamp()J
    .locals 6

    .prologue
    .line 146
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->getFileListing()[Ljava/lang/String;

    move-result-object v1

    .line 147
    iget v0, p0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->mNumFilesWhenCreated:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    array-length v0, v1

    iget v2, p0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->mNumFilesWhenCreated:I

    if-eq v0, v2, :cond_1

    .line 148
    const-wide v2, 0x7fffffffffffffffL

    .line 159
    :cond_0
    return-wide v2

    .line 150
    :cond_1
    const-wide/16 v2, 0x0

    .line 151
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/etc/security/cacerts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 156
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
