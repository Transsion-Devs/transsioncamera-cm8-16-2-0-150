.class public final synthetic Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3;->$r8$lambda$2nbz0eStsIdHmz6xgCg8HfbeP5g(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3;Landroid/net/Uri;)V

    return-void
.end method
