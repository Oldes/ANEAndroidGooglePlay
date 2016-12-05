.class Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;->zzdg(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic US:Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;

.field final synthetic gE:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl$1;->US:Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl$1;->gE:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl$1;->gE:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
