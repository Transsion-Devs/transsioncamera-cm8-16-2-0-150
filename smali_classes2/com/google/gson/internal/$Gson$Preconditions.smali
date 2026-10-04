.class public abstract Lcom/google/gson/internal/$Gson$Preconditions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static checkArgument(Z)V
    .registers 1

    if-eqz p0, :cond_3

    return-void

    .line 54
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
