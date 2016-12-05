.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureOverlayStateBinderCallback"
.end annotation


# instance fields
.field private final Gc:Lcom/google/android/gms/internal/zzqn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqn",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqn",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Callback must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqn;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateBinderCallback;->Gc:Lcom/google/android/gms/internal/zzqn;

    return-void
.end method


# virtual methods
.method public onCaptureOverlayStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateBinderCallback;->Gc:Lcom/google/android/gms/internal/zzqn;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateChangedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateChangedNotifier;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqn;->zza(Lcom/google/android/gms/internal/zzqn$zzb;)V

    return-void
.end method
