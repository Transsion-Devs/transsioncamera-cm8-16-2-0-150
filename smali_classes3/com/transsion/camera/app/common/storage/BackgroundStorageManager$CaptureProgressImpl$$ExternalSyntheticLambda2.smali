.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    check-cast p1, Lcom/transsion/camera/app/common/taps/IThumbnailController;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->$r8$lambda$cBiaqJ6Nl18EMkMePd99tS0mmvM(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Lcom/transsion/camera/app/common/taps/IThumbnailController;)V

    return-void
.end method
