.class Lcom/google/android/gms/internal/zzms$3;
.super Lcom/google/android/gms/internal/zzpm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzms;->removeWorkAccount(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)Lcom/google/android/gms/common/api/PendingResult;
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
.field final synthetic ch:Landroid/accounts/Account;

.field final synthetic cv:Lcom/google/android/gms/internal/zzms;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzms;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzms$3;->cv:Lcom/google/android/gms/internal/zzms;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzms$3;->ch:Landroid/accounts/Account;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzms$3;->zza(Lcom/google/android/gms/internal/zzmt;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmt;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/account/zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzms$3$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzms$3$1;-><init>(Lcom/google/android/gms/internal/zzms$3;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzms$3;->ch:Landroid/accounts/Account;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/auth/account/zzb;->zza(Lcom/google/android/gms/auth/account/zza;Landroid/accounts/Account;)V

    return-void
.end method

.method protected zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzms$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzms$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
