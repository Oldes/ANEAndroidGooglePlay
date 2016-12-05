.class public final Lcom/google/android/gms/internal/zzrb;
.super Landroid/widget/ImageView;


# instance fields
.field private xg:Landroid/net/Uri;

.field private xh:I


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public zzars()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzrb;->xh:I

    return v0
.end method

.method public zzga(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzrb;->xh:I

    return-void
.end method

.method public zzp(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrb;->xg:Landroid/net/Uri;

    return-void
.end method
