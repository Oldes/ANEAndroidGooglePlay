.class Lcom/google/android/gms/internal/zzms$1;
.super Lcom/google/android/gms/internal/zzpm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzms;->setWorkAuthenticatorEnabled(Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzpm$zza",
        "<",
        "Lcom/google/android/gms/common/api/Result;",
        "Lcom/google/android/gms/internal/zzmt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cu:Z

.field final synthetic cv:Lcom/google/android/gms/internal/zzms;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzms;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzms$1;->cv:Lcom/google/android/gms/internal/zzms;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzms$1;->cu:Z

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzpm$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzms$1;->zza(Lcom/google/android/gms/internal/zzmt;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmt;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/account/zzb;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzms$1;->cu:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/account/zzb;->zzaz(Z)V

    return-void
.end method

.method protected zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
