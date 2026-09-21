.class public abstract Lcom/google/android/gms/common/internal/Preconditions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static checkArgument(Z)V
    .registers 1

    if-eqz p0, :cond_3

    return-void

    .line 0
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 1
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static checkNotMainThread(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zza()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-eqz p0, :cond_3

    return-object p0

    .line 0
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
