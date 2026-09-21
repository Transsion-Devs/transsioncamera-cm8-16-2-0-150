.class public final synthetic Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->$r8$lambda$bFesH7YPez1X88_B7BFH-s8l3gc(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Ljava/lang/Long;)Landroid/database/ContentObserver;

    move-result-object p0

    return-object p0
.end method
