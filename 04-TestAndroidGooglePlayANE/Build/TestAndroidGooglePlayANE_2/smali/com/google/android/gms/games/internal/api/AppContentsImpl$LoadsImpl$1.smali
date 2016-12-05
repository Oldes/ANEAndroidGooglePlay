.class Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContents$LoadAppContentResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl;->zzbn(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/appcontent/AppContents$LoadAppContentResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Tb:Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl;

.field final synthetic gE:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl$1;->Tb:Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl$1;->gE:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl$1;->gE:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
