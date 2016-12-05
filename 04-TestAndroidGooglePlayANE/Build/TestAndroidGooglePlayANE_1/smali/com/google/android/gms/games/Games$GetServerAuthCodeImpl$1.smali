.class Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl;->zzbf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PO:Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl;

.field final synthetic gE:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl$1;->PO:Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl$1;->gE:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl$1;->gE:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
