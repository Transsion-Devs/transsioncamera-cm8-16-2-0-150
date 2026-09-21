.class Lcom/bumptech/glide/load/engine/LockedResource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/LockedResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/bumptech/glide/load/engine/LockedResource;
    .registers 1

    .line 24
    new-instance p0, Lcom/bumptech/glide/load/engine/LockedResource;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/LockedResource;-><init>()V

    return-object p0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 1

    .line 21
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/LockedResource$1;->create()Lcom/bumptech/glide/load/engine/LockedResource;

    move-result-object p0

    return-object p0
.end method
