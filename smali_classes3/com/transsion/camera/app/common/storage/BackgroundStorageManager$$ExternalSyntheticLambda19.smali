.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda19;->f$0:Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda19;->f$0:Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    check-cast p1, Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;

    check-cast p2, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->$r8$lambda$TYD71eq29pMnoCtJimAJM8Vpm2A(Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;Lcom/transsion/camera/app/common/taps/entity/CacheInfo;)Lcom/transsion/camera/app/common/taps/entity/CacheInfo$Builder;

    move-result-object p0

    return-object p0
.end method
