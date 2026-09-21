.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda20;->f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda20;->f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->$r8$lambda$zb8or1Msj6d-Duf1cg-7yfAissw(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Ljava/lang/ref/WeakReference;)Lcom/transsion/camera/app/common/taps/IThumbnailController;

    move-result-object p0

    return-object p0
.end method
