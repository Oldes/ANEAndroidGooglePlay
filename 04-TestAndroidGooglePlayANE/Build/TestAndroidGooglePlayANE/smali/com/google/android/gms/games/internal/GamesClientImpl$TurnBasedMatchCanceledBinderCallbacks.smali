.class final Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TurnBasedMatchCanceledBinderCallbacks"
.end annotation


# instance fields
.field private final SD:Lcom/google/android/gms/internal/zzpm$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpm$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpm$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpm$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpm$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;->SD:Lcom/google/android/gms/internal/zzpm$zzb;

    return-void
.end method


# virtual methods
.method public zzk(ILjava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->zzpw(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;->SD:Lcom/google/android/gms/internal/zzpm$zzb;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzpm$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
