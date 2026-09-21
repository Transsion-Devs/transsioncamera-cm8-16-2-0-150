.class public final synthetic Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda7;->f$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda7;->f$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    check-cast p1, Landroid/database/ContentObserver;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->$r8$lambda$N4CjcPd76mkW2mM2hib1C_V7adU(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/database/ContentObserver;)V

    return-void
.end method
