.class public final synthetic Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/BaseCameraActivity;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/net/Uri;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iput-object p2, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    check-cast p1, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->$r8$lambda$EQ5EkqpwC3b0MCgo0hmaXZg35QU(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/net/Uri;Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)V

    return-void
.end method
