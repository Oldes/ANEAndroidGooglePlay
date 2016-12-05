.class Lcom/google/android/gms/internal/zzne$1;
.super Lcom/google/android/gms/internal/zznd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzne;->performProxyRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dw:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

.field final synthetic dx:Lcom/google/android/gms/internal/zzne;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzne;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzne$1;->dx:Lcom/google/android/gms/internal/zzne;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzne$1;->dw:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zznd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/internal/zznc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzne$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzne$1$1;-><init>(Lcom/google/android/gms/internal/zzne$1;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzne$1;->dw:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/zznc;->zza(Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V

    return-void
.end method
