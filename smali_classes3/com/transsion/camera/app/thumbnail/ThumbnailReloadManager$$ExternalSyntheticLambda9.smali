.class public final synthetic Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

.field public final synthetic f$1:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/os/Handler;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda9;->f$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    iput-object p2, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda9;->f$1:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda9;->f$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda9;->f$1:Landroid/os/Handler;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->$r8$lambda$eCDkmQC1kUrjuxqTmfsE0pfoTv8(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/os/Handler;Landroid/net/Uri;)V

    return-void
.end method
