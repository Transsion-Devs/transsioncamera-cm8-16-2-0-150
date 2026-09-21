.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiFunction;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda31;->f$0:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda31;->f$0:Ljava/util/function/BiFunction;

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->$r8$lambda$o6nSP3mob7Nugg4dkkrXaNf8gJc(Ljava/util/function/BiFunction;Ljava/lang/Long;Lcom/transsion/camera/app/common/taps/entity/CacheInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo;

    move-result-object p0

    return-object p0
.end method
