.class public final synthetic Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    iput-object p2, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda5;->f$1:Landroid/os/Handler;

    iput-object p3, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda5;->f$2:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    iget-object v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda5;->f$1:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda5;->f$2:Landroid/content/ContentResolver;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->$r8$lambda$BANtuKgxy_FMHUh2LWw241diUz0(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method
