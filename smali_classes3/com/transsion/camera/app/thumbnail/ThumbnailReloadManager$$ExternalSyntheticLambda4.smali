.class public final synthetic Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda4;->f$0:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda4;->f$0:Landroid/content/ContentResolver;

    check-cast p1, Landroid/database/ContentObserver;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->$r8$lambda$sXuCwjP3RBIeVyGboMrLB00h3d8(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method
