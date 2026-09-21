.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    check-cast p1, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->$r8$lambda$asWf-vech6PiosWKfyFM0B7k1AM(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;)V

    return-void
.end method
