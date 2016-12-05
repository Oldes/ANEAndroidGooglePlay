.class Lcom/google/android/gms/internal/zzms$3$1;
.super Lcom/google/android/gms/internal/zzms$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzms$3;->zza(Lcom/google/android/gms/internal/zzmt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cx:Lcom/google/android/gms/internal/zzms$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzms$3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzms$3$1;->cx:Lcom/google/android/gms/internal/zzms$3;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzms$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzay(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzms$3$1;->cx:Lcom/google/android/gms/internal/zzms$3;

    new-instance v2, Lcom/google/android/gms/internal/zzms$zzc;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->sq:Lcom/google/android/gms/common/api/Status;

    :goto_0
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzms$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzms$3;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzms;->zzafa()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    goto :goto_0
.end method
