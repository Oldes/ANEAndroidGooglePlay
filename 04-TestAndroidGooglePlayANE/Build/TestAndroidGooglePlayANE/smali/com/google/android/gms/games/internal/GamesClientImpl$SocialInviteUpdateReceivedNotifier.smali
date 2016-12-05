.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqn$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SocialInviteUpdateReceivedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqn$zzb",
        "<",
        "Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final SB:Lcom/google/android/gms/games/social/SocialInvite;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/social/SocialInvite;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;->SB:Lcom/google/android/gms/games/social/SocialInvite;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;->SB:Lcom/google/android/gms/games/social/SocialInvite;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;->zza(Lcom/google/android/gms/games/social/SocialInvite;)V

    return-void
.end method

.method public zzapj()V
    .locals 0

    return-void
.end method

.method public synthetic zzt(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;->zza(Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;)V

    return-void
.end method
