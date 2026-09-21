.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->$r8$lambda$P4cnSJszjmn9R7D5frtK3yh8Qyg(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;Ljava/lang/ref/WeakReference;)Lcom/transsion/camera/app/common/taps/IThumbnailController;

    move-result-object p0

    return-object p0
.end method
