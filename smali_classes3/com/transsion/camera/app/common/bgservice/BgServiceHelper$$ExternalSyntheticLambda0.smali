.class public final synthetic Lcom/transsion/camera/app/common/bgservice/BgServiceHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/media/ImageReader;


# direct methods
.method public synthetic constructor <init>(Landroid/media/ImageReader;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper$$ExternalSyntheticLambda0;->f$0:Landroid/media/ImageReader;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper$$ExternalSyntheticLambda0;->f$0:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p0

    return-object p0
.end method
